import base64
import urllib
import requests

API_KEY = ""
SECRET_KEY = ""


def main(image_path=""):
    url = "https://aip.baidubce.com/rest/2.0/image-classify/v1/realtime_search/similar/search?access_token=" + get_access_token()

    # image 可以通过 get_file_content_as_base64("C:\fakepath\KEVIN.png",True) 方法获取
    image = get_file_content_as_base64(image_path, True)
    payload = f"image={image}"
    headers = {
        'Content-Type': 'application/x-www-form-urlencoded'
    }

    response = requests.request("POST", url, headers=headers, data=payload)
    # print(response.json())
    result = process_response(response)

    return result

def process_response(response):

    if "error_msg" in response.json():
        result = response.json()["error_msg"]
    else:
        result_data = response.json().get("result", [])
        selected_briefs = [item["brief"] for item in result_data if item.get("score", 0) >= 0.3]
        result = ', '.join(selected_briefs) if selected_briefs else ''
        # print(result)
    return result


def get_file_content_as_base64(path, urlencoded=False):
    """
    获取文件base64编码
    :param path: 文件路径
    :param urlencoded: 是否对结果进行urlencoded
    :return: base64编码信息
    """
    with open(path, "rb") as f:
        content = base64.b64encode(f.read()).decode("utf8")
        if urlencoded:
            content = urllib.parse.quote_plus(content)
    return content


def get_access_token():
    """
    使用 AK，SK 生成鉴权签名（Access Token）
    :return: access_token，或是None(如果错误)
    """
    url = "https://aip.baidubce.com/oauth/2.0/token"
    params = {"grant_type": "client_credentials", "client_id": API_KEY, "client_secret": SECRET_KEY}
    return str(requests.post(url, params=params).json().get("access_token"))


if __name__ == '__main__':
    pass
    # main("")
