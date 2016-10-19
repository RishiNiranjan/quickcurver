#include "fatteritem.h"

FatterItem::FatterItem(QSGNode *node, int fieldsize) : CurveItem(node, fieldsize, false, true, false) {
	deUseTime = 5000;
}

void FatterItem::use(QCurver *curver) {
	curver->doubleThickness();
}

void FatterItem::deuse(QCurver *curver) {
	curver->halfThickness();
}
