.class public Lcom/android/launcher3/shortcuts/DeepShortcutTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source "SourceFile"


# instance fields
.field private final mDragHandleBounds:Landroid/graphics/Rect;

.field private final mDragHandleWidth:I

.field private mInstructionToast:Landroid/widget/Toast;

.field private mShowInstructionToast:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    .line 37
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowInstructionToast:Z

    .line 52
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 53
    const p2, 0x7f0b007b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    .line 54
    const p3, 0x7f0b0079

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    add-int/2addr p2, p3

    .line 55
    const p3, 0x7f0b0078

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p2, p1

    iput p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    .line 56
    return-void
.end method


# virtual methods
.method protected final applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->onMeasure(II)V

    .line 62
    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    iget p2, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getMeasuredWidth()I

    move-result p2

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 66
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowInstructionToast:Z

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performClick()Z
    .locals 3

    .line 84
    iget-boolean v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mShowInstructionToast:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mInstructionToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c0036

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->wrapForTts(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mInstructionToast:Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/launcher3/shortcuts/DeepShortcutTextView;->mInstructionToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    :cond_1
    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->performClick()Z

    move-result v0

    return v0
.end method
