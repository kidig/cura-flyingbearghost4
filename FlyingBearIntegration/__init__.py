# Copyright (c) 2017 Looming
# Cura is released under the terms of the LGPLv3 or higher.

from . import FlyingBearOutputDevice
from . import FlyingBearExtension


def getMetaData():
    return {}


def register(app):
    return {
        "output_device": FlyingBearOutputDevice.FlyingBearOutputDevicePlugin(),
        "extension": FlyingBearExtension.FlyingBearExtensionIns,
        }
