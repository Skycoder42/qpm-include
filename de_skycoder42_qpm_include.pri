isEmpty(QPM_INCLUDEPATH):warning("QPM_INCLUDEPATH is empty - did you forget to set it before including vendor.pri?")
for(qpm_inc, QPM_INCLUDEPATH) {
	INCLUDEPATH += $$fromfile($${qpm_inc}, INCLUDEPATH)
}