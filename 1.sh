apppath="${BUILT_PRODUCTS_DIR}/XXXXXX.app"
qtpath="${QTDIR}/"
qtbinpath="${qtpath}bin/"
qtlibpath="${qtpath}lib/"
frameworkpath="${apppath}/Contents/Frameworks/"

${qtbinpath}macdeployqt $apppath

cp ${qtlibpath}QtCore.framework/Contents/Info.plist ${frameworkpath}QtCore.framework/Resources

cp ${qtlibpath}QtGui.framework/Contents/Info.plist ${frameworkpath}QtGui.framework/Resources

cp ${qtlibpath}QtNetwork.framework/Contents/Info.plist ${frameworkpath}QtNetwork.framework/Resources

cp ${qtlibpath}QtPrintSupport.framework/Contents/Info.plist ${frameworkpath}QtPrintSupport.framework/Resources

cp ${qtlibpath}QtScript.framework/Contents/Info.plist ${frameworkpath}QtScript.framework/Resources

cp ${qtlibpath}QtWidgets.framework/Contents/Info.plist ${frameworkpath}QtWidgets.framework/Resources

cp ${qtlibpath}QtMultimedia.framework/Contents/Info.plist ${frameworkpath}QtMultimedia.framework/Resources

cp ${qtlibpath}QtMultimediaWidgets.framework/Contents/Info.plist ${frameworkpath}QtMultimediaWidgets.framework/Resources

cp ${qtlibpath}QtOpenGL.framework/Contents/Info.plist ${frameworkpath}QtOpenGL.framework/Resources

cp ${qtlibpath}QtPositioning.framework/Contents/Info.plist ${frameworkpath}QtPositioning.framework/Resources

cp ${qtlibpath}QtQml.framework/Contents/Info.plist ${frameworkpath}QtQml.framework/Resources

cp ${qtlibpath}QtQuick.framework/Contents/Info.plist ${frameworkpath}QtQuick.framework/Resources

cp ${qtlibpath}QtSensors.framework/Contents/Info.plist ${frameworkpath}QtSensors.framework/Resources

cp ${qtlibpath}QtSql.framework/Contents/Info.plist ${frameworkpath}QtSql.framework/Resources

cp ${qtlibpath}QtWebkit.framework/Contents/Info.plist ${frameworkpath}QtWebkit.framework/Resources

cp ${qtlibpath}QtWebkitWidgets.framework/Contents/Info.plist ${frameworkpath}QtWebkitWidgets.framework/Resources

cp ${qtlibpath}QtXml.framework/Contents/Info.plist ${frameworkpath}QtXml.framework/Resources