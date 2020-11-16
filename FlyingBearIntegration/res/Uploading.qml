import UM 1.1 as UM 
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1

UM.Dialog
{
    id: base

    width: 500 * screenScaleFactor
    height: 250 * screenScaleFactor
    minimumWidth: 500 * screenScaleFactor
    minimumHeight: 250 * screenScaleFactor
    title: "Uploading"
    onClosing: {manager.on_uploading_window_close();}

    Label {
        id: lb_uploading_filename
        objectName: "lb_uploading_filename"
        x: Math.floor(25 * screenScaleFactor)
        y: Math.floor(24 * screenScaleFactor)
        height: Math.floor(16 * screenScaleFactor)
        text: "printing_filename.gcode"
        font.pointSize: Math.floor(12 * screenScaleFactor)
    }

    ProgressBar {
        id: pgb_progress
        objectName: "pgb_progress"
        x: Math.floor(25 * screenScaleFactor)
        y: Math.floor(54 * screenScaleFactor)
        width: Math.floor(400 * screenScaleFactor)
        height:Math.floor(6 * screenScaleFactor)
        value: 0
    }

    Button {
        id: btn_cancel
        objectName: "btn_cancel"
        x: Math.floor(210 * screenScaleFactor)
        y: Math.floor(172 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Cancel"
        onClicked: {manager.cancel_upload();}
    }

    Label {
        id: lb_speed
        objectName: "lb_speed"
        x: Math.floor(25 * screenScaleFactor)
        y: Math.floor(70 * screenScaleFactor)
        height: Math.floor(16 * screenScaleFactor)
        text: "Speed:"
        font.pointSize: Math.floor(12 * screenScaleFactor)
    }

    Label {
        id: lb_remain_time
        objectName: "lb_remain_time"
        x: Math.floor(25 * screenScaleFactor)
        y: Math.floor(96 * screenScaleFactor)
        text: "Remain Time: "
        horizontalAlignment: Text.AlignRight
        font.pointSize: Math.floor(12 * screenScaleFactor)
    }

    CheckBox {
        id: ck_auto_start_print
        objectName: "ck_auto_start_print"
        x: Math.floor(25 * screenScaleFactor)
        y: Math.floor(123 * screenScaleFactor)
        text: "Start printing as soon as the transfer is complete"
    }
}
