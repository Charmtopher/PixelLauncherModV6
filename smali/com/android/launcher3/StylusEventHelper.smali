.class public Lcom/android/launcher3/StylusEventHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mIsButtonPressed:Z

.field private mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

.field private final mSlop:F

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;Landroid/view/View;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    .line 50
    iput-object p2, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    .line 51
    iget-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/StylusEventHelper;->mSlop:F

    return-void

    .line 54
    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/android/launcher3/StylusEventHelper;->mSlop:F

    .line 56
    return-void
.end method


# virtual methods
.method public final onMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    .line 60
    move v1, v2

    goto :goto_0

    .line 59
    :cond_0
    nop

    .line 60
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 68
    :pswitch_0
    iget-object v3, p0, Lcom/android/launcher3/StylusEventHelper;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v5, p0, Lcom/android/launcher3/StylusEventHelper;->mSlop:F

    invoke-static {v3, v4, p1, v5}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result p1

    if-nez p1, :cond_1

    .line 69
    return v0

    .line 71
    :cond_1
    iget-boolean p1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-nez p1, :cond_2

    if-eqz v1, :cond_2

    .line 72
    iput-boolean v2, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 73
    iget-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onPressed$53fcfd4e()Z

    move-result p1

    return p1

    .line 74
    :cond_2
    iget-boolean p1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz p1, :cond_3

    if-nez v1, :cond_3

    .line 75
    iput-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 76
    iget-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onReleased$53fcfd4e()Z

    move-result p1

    return p1

    .line 81
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz p1, :cond_3

    .line 82
    iput-boolean v0, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 83
    iget-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onReleased$53fcfd4e()Z

    move-result p1

    return p1

    .line 62
    :pswitch_2
    iput-boolean v1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    .line 63
    iget-boolean p1, p0, Lcom/android/launcher3/StylusEventHelper;->mIsButtonPressed:Z

    if-eqz p1, :cond_3

    .line 64
    iget-object p1, p0, Lcom/android/launcher3/StylusEventHelper;->mListener:Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;

    invoke-interface {p1}, Lcom/android/launcher3/StylusEventHelper$StylusButtonListener;->onPressed$53fcfd4e()Z

    move-result p1

    return p1

    .line 87
    :cond_3
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
