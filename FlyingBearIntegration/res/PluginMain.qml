import UM 1.1 as UM 
import Cura 1.0 as Cura
import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Window 2.1
import QtQuick.Controls.Styles 1.1




Window{

    id: base
    width: 600 * screenScaleFactor
    height: 700 * screenScaleFactor
    minimumWidth: 600 * screenScaleFactor
    minimumHeight: 700 * screenScaleFactor
    title: "FlyingBear Printers Manager"
    onClosing: {manager.on_window_close();}

    
    Label {
        id: lb_ip
        objectName: "lb_ip"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(25 * screenScaleFactor)
        text: "IP"
        font.pointSize: Math.floor(14*screenScaleFactor)
        font.bold: true
    }

    TextField {
        id: txt_printer_ip
        objectName: "txt_printer_ip"
        x: Math.floor(49 * screenScaleFactor)
        y: Math.floor(20 * screenScaleFactor)
        width: Math.floor(122 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: ""
    }

    Button {
        id: btn_connect
        objectName: "btn_connect"
        x: Math.floor(177 * screenScaleFactor)
        y: Math.floor(20 * screenScaleFactor)
        width: Math.floor(70 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Connect"
        onClicked: {manager.connect_printer();}
    }

    Button {
        id: btn_disconnect
        objectName: "btn_disconnect"
        x: Math.floor(177 * screenScaleFactor)
        y: Math.floor(20 * screenScaleFactor)
        width: Math.floor(90 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Disconnect"
        onClicked: {manager.disconnect_printer();}
    }

    Button{
        id: img_edit_printer_name
        objectName: "img_edit_printer_name"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(65 * screenScaleFactor)
        width: Math.floor(16 * screenScaleFactor)
        height: Math.floor(16 * screenScaleFactor)
        onClicked: {manager.edit_name();}
        style: ButtonStyle {
            background:Rectangle{
                implicitHeight: img_edit_printer_name.height
                implicitWidth:  img_edit_printer_name.width
                color: "transparent" 
                BorderImage{
                    anchors.fill: parent
                    source: "edit.png";
                }
            }
        }
    }

    Label {
        id: lb_printer_name
        objectName: "lb_printer_name"
        x: Math.floor(33 * screenScaleFactor)
        y: Math.floor(65 * screenScaleFactor)
        text: "PrinterN"
        font.pointSize: Math.floor(12*screenScaleFactor)
    }

    Label {
        id: lb_printer_state
        objectName: "lb_printer_state"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(95 * screenScaleFactor)
        text: "Not Connected"
        font.pointSize: Math.floor(12*screenScaleFactor)
    }

    Label {
        id: lb_printer_bed
        objectName: "lb_printer_bed"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(125 * screenScaleFactor)
        text: "Bed: 0 / 0"
        font.pointSize: Math.floor(12*screenScaleFactor)
    }

    Label {
        id: lb_printer_t0
        objectName: "lb_printer_t0"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(155 * screenScaleFactor)
        text: "T0: 0 / 0"
        font.pointSize: Math.floor(12*screenScaleFactor)
    }

    Label {
        id: lb_printer_t1
        objectName: "lb_printer_t1"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(185 * screenScaleFactor)
        text: "T1: 0 / 0"
        font.pointSize: Math.floor(12*screenScaleFactor)
    }

    Button {
        id: btn_preheat
        objectName: "btn_preheat"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(217 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Preheat"
        onClicked: {manager.send_cmd("pre_heat");}
    }

    Button {
        id: btn_cooldown
        objectName: "btn_cooldown"
        x: Math.floor(99 * screenScaleFactor)
        y: Math.floor(217 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Cooldown"
        onClicked: {manager.send_cmd("cool_down");}
    }

    Button {
        id: btn_sd
        objectName: "btn_sd"
        x: Math.floor(185 * screenScaleFactor)
        y: Math.floor(217 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "SD"
        onClicked: {manager.show_sd();}
    }

    Button {
        id: btn_upload
        objectName: "btn_upload"
        x: Math.floor(271 * screenScaleFactor)
        y: Math.floor(217 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Upload"
        onClicked: {manager.show_upload();}
    }
	
    Button {
        id: btn_homexyz
        objectName: "btn_homexyz"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(260 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "HomeXYZ"
        onClicked: {manager.send_gcode_str("G28\n");}
    }

    Button {
        id: btn_t0
        objectName: "btn_t0"
        x: Math.floor(99 * screenScaleFactor)
        y: Math.floor(260 * screenScaleFactor)
        width: Math.floor(28 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "E1"
        onClicked: {manager.send_gcode_str("T0\n");}
    }

    Button {
        id: btn_t1
        objectName: "btn_t1"
        x: Math.floor(133 * screenScaleFactor)
        y: Math.floor(260 * screenScaleFactor)
        width: Math.floor(28 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "E2"
        onClicked: {manager.send_gcode_str("T1\n");}
    }

    Label {
        id: lb_gcode
        objectName: "lb_gcode"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(309 * screenScaleFactor)
        text: "Gcode"
        font.pointSize: Math.floor(14*screenScaleFactor)
        font.bold: true
    }

    TextField {
        id: txt_gcode
        objectName: "txt_gcode"
        x: Math.floor(85 * screenScaleFactor)
        y: Math.floor(303 * screenScaleFactor)
        width: Math.floor(190 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: ""
    }

    Button {
        id: btn_send
        objectName: "btn_send"
        x: Math.floor(281 * screenScaleFactor)
        y: Math.floor(303 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Send"
        onClicked: {manager.send_gcode();}
    }

    Button{
        id: btn_gcode_help
        objectName: "btn_gcode_help"
        x: Math.floor(367 * screenScaleFactor)
        y: Math.floor(310 * screenScaleFactor)
        width: Math.floor(16 * screenScaleFactor)
        height: Math.floor(16 * screenScaleFactor)
        onClicked: {manager.btn_gcode_help();}
        style: ButtonStyle {
            background:Rectangle{
                implicitHeight: img_edit_printer_name.height
                implicitWidth:  img_edit_printer_name.width
                color: "transparent" 
                BorderImage{
                    anchors.fill: parent
                    source: "help.png";
                }
            }
        }
    }


    Label {
        id: lb_printing
        objectName: "lb_printing"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(348 * screenScaleFactor)
        text: "Printing"
        font.bold: true
        font.pointSize: Math.floor(14*screenScaleFactor)
    }

    ProgressBar {
        id: pgb_printing_progress
        objectName: "pgb_printing_progress"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(403 * screenScaleFactor)
        height: Math.floor(6 * screenScaleFactor)
        width: Math.floor(210 * screenScaleFactor)
        value: 0.5
    }

    Label {
        id: lb_printing_progress
        objectName: "lb_printing_progress"
        x: Math.floor(226 * screenScaleFactor)
        y: Math.floor(398 * screenScaleFactor)
        text: "50%"
        font.pointSize: Math.floor(12*screenScaleFactor)
    }

    Button {
        id: btn_pause
        objectName: "btn_pause"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(426 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Pause"
        onClicked: {manager.printing_task_pause();}
    }

    Button {
        id: btn_resume
        objectName: "btn_resume"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(426 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Resume"
        onClicked: {manager.printing_task_resume();}
    }

    Button {
        id: btn_stop
        objectName: "btn_stop"
        x: Math.floor(99 * screenScaleFactor)
        y: Math.floor(426 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Stop"
        onClicked: {manager.printing_task_stop();}
    }

    Button {
        id: btn_off
        objectName: "btn_off"
        x: Math.floor(185 * screenScaleFactor)
        y: Math.floor(426 * screenScaleFactor)
        width: Math.floor(80 * screenScaleFactor)
        height: Math.floor(30 * screenScaleFactor)
        text: "Off"
    }

    Label {
        id: lb_printing_filename
        objectName: "lb_printing_filename"
        x: Math.floor(13 * screenScaleFactor)
        y: Math.floor(376 * screenScaleFactor)
        height: Math.floor(16 * screenScaleFactor)
        text: "printing_filename.gcode"
        font.pointSize: Math.floor(12*screenScaleFactor)
    }

    Rectangle{
        width: Math.floor(200 * screenScaleFactor)
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        color: UM.Theme.getColor("viewport_overlay")

        ListView {
            id: lv_ip_list
            objectName: "lv_ip_list"
            x: Math.floor(10 * screenScaleFactor)
            y: Math.floor(10 * screenScaleFactor)
            width: Math.floor(190 * screenScaleFactor)
            anchors.bottom: parent.bottom
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            delegate: Item {
                width: Math.floor(190 * screenScaleFactor)
                height: Math.floor(20 * screenScaleFactor)

                Rectangle{
                    width: Math.floor(190 * screenScaleFactor)
                    height: Math.floor(18 * screenScaleFactor)
                    y:Math.floor(10 * screenScaleFactor)
                    color: bg=="True"?"#D6D6D6":UM.Theme.getColor("viewport_overlay")
                }

                Label {
                    y:Math.floor(10 * screenScaleFactor)
                    height: Math.floor(18 * screenScaleFactor)
                    text: name
                    font.pointSize: Math.floor(12*screenScaleFactor)
                }

                MouseArea
                {
                    anchors.fill: parent;
                    onClicked:
                    {
                        manager.on_ip_list_click(name);
                    }
                }
            }
            model: ListModel {
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}

                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}

                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}

                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}
                ListElement {name: ""
                bg:""}

            }
        }
    }
 
}
