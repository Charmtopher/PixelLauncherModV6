.class public Lcom/android/launcher3/views/BottomUserEducationView;
.super Lcom/android/launcher3/views/AbstractSlideInView;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Insettable;


# instance fields
.field private mCloseButton:Landroid/view/View;

.field private final mInsets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/views/BottomUserEducationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/views/AbstractSlideInView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mInsets:Landroid/graphics/Rect;

    .line 51
    iput-object p0, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mContent:Landroid/view/View;

    .line 52
    return-void
.end method

.method public static synthetic lambda$onFinishInflate$0(Lcom/android/launcher3/views/BottomUserEducationView;Landroid/view/View;)V
    .locals 0

    .line 58
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BottomUserEducationView;->handleClose(Z)V

    return-void
.end method

.method public static showIfNeeded(Lcom/android/launcher3/Launcher;)V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v1, "showed_bottom_user_education"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    return-void

    .line 124
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 125
    const v1, 0x7f040043

    .line 127
    iget-object v3, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 126
    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BottomUserEducationView;

    .line 129
    iget-object p0, p0, Lcom/android/launcher3/Launcher;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 130
    iget-boolean p0, v0, Lcom/android/launcher3/views/BottomUserEducationView;->mIsOpen:Z

    if-nez p0, :cond_2

    iget-object p0, v0, Lcom/android/launcher3/views/BottomUserEducationView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/android/launcher3/views/BottomUserEducationView;->mIsOpen:Z

    iget-object v1, v0, Lcom/android/launcher3/views/BottomUserEducationView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    new-array v3, p0, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/views/BottomUserEducationView;->TRANSLATION_SHIFT:Landroid/util/Property;

    new-array p0, p0, [F

    const/4 v5, 0x0

    aput v5, p0, v2

    invoke-static {v4, p0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    iget-object p0, v0, Lcom/android/launcher3/views/BottomUserEducationView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, v0, Lcom/android/launcher3/views/BottomUserEducationView;->mOpenCloseAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 2

    .line 91
    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/views/BottomUserEducationView;->handleClose(ZJ)V

    .line 92
    if-eqz p1, :cond_0

    .line 95
    iget-object p1, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object p1, p1, Lcom/android/launcher3/Launcher;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "showed_bottom_user_education"

    const/4 v1, 0x1

    .line 96
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 97
    const/16 p1, 0x20

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/views/BottomUserEducationView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-static {p0, p1, v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 102
    :cond_0
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    .line 75
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logActionCommand(I)V
    .locals 0

    .line 71
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/android/launcher3/views/AbstractSlideInView;->onFinishInflate()V

    .line 57
    const v0, 0x7f0e008f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/views/BottomUserEducationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    .line 58
    iget-object v0, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/views/-$$Lambda$BottomUserEducationView$kONmsarlQNBji-dbZJSp0try0p8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/views/-$$Lambda$BottomUserEducationView$kONmsarlQNBji-dbZJSp0try0p8;-><init>(Lcom/android/launcher3/views/BottomUserEducationView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 63
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/views/AbstractSlideInView;->onLayout(ZIIII)V

    .line 64
    iget p1, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mTranslationShift:F

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/BottomUserEducationView;->setTranslationShift(F)V

    .line 65
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object p2, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->left:I

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->top:I

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object p3, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p3, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    new-instance p3, Landroid/view/TouchDelegate;

    iget-object p4, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mCloseButton:Landroid/view/View;

    invoke-direct {p3, p1, p4}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 66
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 4

    .line 81
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 82
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    .line 83
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v3

    .line 84
    iget-object v3, p0, Lcom/android/launcher3/views/BottomUserEducationView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/views/BottomUserEducationView;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/launcher3/views/BottomUserEducationView;->getPaddingTop()I

    move-result v0

    .line 86
    invoke-virtual {p0}, Lcom/android/launcher3/views/BottomUserEducationView;->getPaddingRight()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Lcom/android/launcher3/views/BottomUserEducationView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v2

    .line 85
    invoke-virtual {p0, p1, v0, v3, v1}, Lcom/android/launcher3/views/BottomUserEducationView;->setPadding(IIII)V

    .line 87
    return-void
.end method
