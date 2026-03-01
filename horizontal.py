import sys
from PyQt5.QtGui import QPixmap
from PyQt5.QtWidgets import QWidget, QApplication, QLabel, QGridLayout
from window_check import Ui_window_check


class Form(QWidget, Ui_window_check):
    def __init__(self, image_path, name,number,major):
        super(Form, self).__init__()
        self.initUI(image_path,name,number,major)

    def initUI(self, image_path,name,number,major):


        grid_layout = QGridLayout(self)
        # 设置grid_layout固定大小
        # self.setFixedSize(300, 140)

        # Left side: QLabel to display the image
        form_layout_1 = QGridLayout()
        image_label = QLabel()
        pixmap = QPixmap(image_path)
        image_label.setPixmap(pixmap.scaledToHeight(120))
        image_label.setScaledContents(False)
        form_layout_1.addWidget(image_label)

        grid_layout.addWidget(image_label, 0, 0, 1, 1)  # Span 1 rows and 1 column

        # Right side: QGridLayout to display personal information in a 3x2 grid
        form_layout_2 = QGridLayout()
        form_layout_2.setContentsMargins(-1, 5, -1, -1)
        form_layout_2.setVerticalSpacing(15)
        # Add labels to the grid
        label_1 = QLabel("姓 名：")
        label_1.setStyleSheet("font: 75 10pt '微软雅黑'; color: rgb(100, 100, 100);")  # Example styling
        form_layout_2.addWidget(label_1, 0, 0)
        label_name = QLabel(name)
        label_name.setStyleSheet("font: 75 11pt '微软雅黑';")  # Example styling
        form_layout_2.addWidget(label_name, 0, 1)
        label_2 = QLabel("学 号：")
        label_2.setStyleSheet("font: 75 10pt '微软雅黑'; color: rgb(100, 100, 100);")  # Example styling
        form_layout_2.addWidget(label_2, 1, 0)
        label_number = QLabel(number)
        label_number.setStyleSheet("font: 75 11pt '微软雅黑';")  # Example styling
        form_layout_2.addWidget(label_number, 1, 1)
        label_3 = QLabel("专 业：")
        label_3.setStyleSheet("font: 75 10pt '微软雅黑'; color: rgb(100, 100, 100);")  # Example styling
        form_layout_2.addWidget(label_3, 2, 0)
        label_major = QLabel(major)
        label_major.setStyleSheet("font: 75 11pt '微软雅黑';")  # Example styling
        form_layout_2.addWidget(label_major, 2, 1)

        form_layout_2.setColumnStretch(1, 1)

        grid_layout.addLayout(form_layout_1, 0, 0, 3, 1)
        grid_layout.addLayout(form_layout_2, 0, 1)


if __name__ == '__main__':
    app = QApplication(sys.argv)
    window = Form(r"C:\Users\Administrator\Pictures\Screenshots\ELYSIA.png","name","number","major")
    window.show()
    sys.exit(app.exec_())