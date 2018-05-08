.class Lcom/android/launcher3/dragndrop/SystemDragDriver;
.super Lcom/android/launcher3/dragndrop/DragDriver;
.source "SourceFile"


# instance fields
.field mLastX:F

.field mLastY:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;-><init>(Lcom/android/launcher3/dragndrop/DragDriver$EventListener;)V

    .line 99
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 100
    iput p1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 104
    return-void
.end method


# virtual methods
.method public final onDragEvent(Landroid/view/DragEvent;)Z
    .locals 3

    .line 118
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 120
    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 150
    const/4 p1, 0x0

    return p1

    .line 142
    :pswitch_0
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {p1}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragExitWindow()V

    .line 143
    return v1

    .line 127
    :pswitch_1
    return v1

    .line 146
    :pswitch_2
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-interface {p1}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragCancel()V

    .line 147
    return v1

    .line 136
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 137
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 138
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 139
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    iget v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    iget v2, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    invoke-interface {p1, v0, v2}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragEnd(FF)V

    .line 140
    return v1

    .line 130
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 131
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 132
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mEventListener:Lcom/android/launcher3/dragndrop/DragDriver$EventListener;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    invoke-interface {v0, v2, p1}, Lcom/android/launcher3/dragndrop/DragDriver$EventListener;->onDriverDragMove(FF)V

    .line 133
    return v1

    .line 122
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastX:F

    .line 123
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/SystemDragDriver;->mLastY:F

    .line 124
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 113
    const/4 p1, 0x0

    return p1
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 108
    const/4 p1, 0x0

    return p1
.end method
