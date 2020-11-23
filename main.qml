import QtQuick 2.15
import QtQuick.Window 2.15

// imports MyButton.1.0, MyRectangle.1.0 components from com/github/siexp.1.0
import com.github.siexp 1.0 as Core1

// imports MyButton.2.0, MyCircle.2.0, MyRectangle.1.0 component from com/github/siexp.2.0
import com.github.siexp 2.0 as Core2

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    // MyButton has 2 version 1.0 and 2.0, you can use either by specifying correct qualifier
    Core2.MyButton {
        x: 0
        y: 0
    }

    Core1.MyButton {
        x: 200
        y: 0
    }

    // MyCircle only available in 2.0
    Core2.MyCircle {
        x: 0
        y: 200
    }

    // MyRectangle has 1 version 1.0 and available in either Core2, Core1
    Core2.MyRectangle {
        x: 200
        y: 200
    }

    Core1.MyRectangle {
        x: 400
        y: 200
    }
}
