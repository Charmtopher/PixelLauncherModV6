.class Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;
.super Landroid/support/a/z;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 643
    invoke-direct {p0, p1}, Landroid/support/a/z;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 643
    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$1400(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result p1

    return p1
.end method

.method public final synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 643
    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-static {p1, p2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$1402(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)F

    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->access$1800(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
