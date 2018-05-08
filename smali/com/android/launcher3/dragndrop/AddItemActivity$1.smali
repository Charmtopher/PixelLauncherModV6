.class Lcom/android/launcher3/dragndrop/AddItemActivity$1;
.super Landroid/view/View$DragShadowBuilder;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity$1;->this$0:Lcom/android/launcher3/dragndrop/AddItemActivity;

    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 0

    .line 170
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 1

    .line 174
    const/16 v0, 0xa

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Point;->set(II)V

    .line 175
    const/4 p1, 0x5

    invoke-virtual {p2, p1, p1}, Landroid/graphics/Point;->set(II)V

    .line 176
    return-void
.end method
