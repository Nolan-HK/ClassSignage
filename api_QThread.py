import time

from PyQt5.QtCore import QThread, pyqtSignal
from PyQt5.QtWidgets import QWidget

from search_image_api import main

class WorkerThread(QThread, QWidget):   # 继承顺序很重要
    # 主线程
    periodic_function_done = pyqtSignal(str)

    def __init__(self):
        super(WorkerThread, self).__init__()
        self.count = 0

    def run(self):
        print(f"-------上传{self.count}次-------")
        time.sleep(2)  # 检测频率！！ todo
        result = main("resource/cache.png").split(",")[0]
        # 发送结果给主线程
        self.periodic_function_done.emit(result)
        self.count += 1

    def return_result(self, result):
        return result
