.class Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/WindowCallbacks;


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/system/WindowCallbacksCompat;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentDrawn(IIII)Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onContentDrawn(IIII)Z

    move-result p1

    return p1
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onPostDraw(Landroid/graphics/Canvas;)V

    .line 60
    return-void
.end method

.method public onRequestDraw(Z)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onRequestDraw(Z)V

    .line 55
    return-void
.end method

.method public onWindowDragResizeEnd()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onWindowDragResizeEnd()V

    .line 45
    return-void
.end method

.method public onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 40
    return-void
.end method

.method public onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/android/systemui/shared/system/WindowCallbacksCompat$1;->this$0:Lcom/android/systemui/shared/system/WindowCallbacksCompat;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/shared/system/WindowCallbacksCompat;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 33
    return-void
.end method
