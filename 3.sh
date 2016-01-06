apppath="${BUILT_PRODUCTS_DIR}/xxxxxx.app"
frameworkpath="${apppath}/Contents/Frameworks/"
pluginpath="${apppath}/Contents/PlugIns/"
cert="3rd Party Mac Developer Application: Chengdu XXXXXX Science and Technology Co., Ltd (7YNK8EZZR8)"



codesign --deep --verbose --force --sign "${cert}" ${frameworkpath}*
codesign --deep --verbose --force --sign "${cert}" ${pluginpath}accessible/*
codesign --deep --verbose --force --sign "${cert}" ${pluginpath}audio/*
codesign --deep --verbose --force --sign "${cert}" ${pluginpath}imageformats/*
codesign --deep --verbose --force --sign "${cert}" ${pluginpath}mediaservice/*
codesign --deep --verbose --force --sign "${cert}" ${pluginpath}platforms/*
codesign --deep --verbose --force --sign "${cert}" ${pluginpath}printsupport/*
codesign --deep --verbose --force --sign "${cert}" ${pluginpath}sqldrivers/*