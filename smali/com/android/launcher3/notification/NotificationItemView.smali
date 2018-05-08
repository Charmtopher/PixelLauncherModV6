.class public Lcom/android/launcher3/notification/NotificationItemView;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAnimatingNextIcon:Z

.field public final mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field public final mContext:Landroid/content/Context;

.field public final mDivider:Landroid/view/View;

.field public final mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

.field public mGutter:Landroid/view/View;

.field public final mHeader:Landroid/view/View;

.field public final mHeaderCount:Landroid/widget/TextView;

.field public final mHeaderText:Landroid/widget/TextView;

.field private final mIconView:Landroid/view/View;

.field public mIgnoreTouch:Z

.field public final mMainView:Lcom/android/launcher3/notification/NotificationMainView;

.field public mNotificationHeaderTextColor:I

.field public final mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;)V
    .locals 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIgnoreTouch:Z

    .line 62
    iput v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mNotificationHeaderTextColor:I

    .line 65
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 66
    invoke-virtual {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContext:Landroid/content/Context;

    .line 68
    const v1, 0x7f0e0054

    invoke-virtual {p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderText:Landroid/widget/TextView;

    .line 69
    const v1, 0x7f0e0055

    invoke-virtual {p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeaderCount:Landroid/widget/TextView;

    .line 70
    const v1, 0x7f0e0056

    invoke-virtual {p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationMainView;

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    .line 71
    const v1, 0x7f0e005b

    invoke-virtual {p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/notification/NotificationFooterLayout;

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    .line 72
    const v1, 0x7f0e005a

    invoke-virtual {p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIconView:Landroid/view/View;

    .line 74
    const v1, 0x7f0e0053

    invoke-virtual {p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mHeader:Landroid/view/View;

    .line 75
    const v1, 0x7f0e0046

    invoke-virtual {p1, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mDivider:Landroid/view/View;

    .line 77
    new-instance p1, Lcom/android/launcher3/touch/SwipeDetector;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    sget-object v3, Lcom/android/launcher3/touch/SwipeDetector;->HORIZONTAL:Lcom/android/launcher3/touch/SwipeDetector$Direction;

    invoke-direct {p1, v1, v2, v3}, Lcom/android/launcher3/touch/SwipeDetector;-><init>(Landroid/content/Context;Lcom/android/launcher3/touch/SwipeDetector$Listener;Lcom/android/launcher3/touch/SwipeDetector$Direction;)V

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    .line 78
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/touch/SwipeDetector;->setDetectableScrollConditions(IZ)V

    .line 79
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    iput-object v0, p1, Lcom/android/launcher3/notification/NotificationMainView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    .line 80
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    iput-object p0, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mContainer:Lcom/android/launcher3/notification/NotificationItemView;

    .line 81
    return-void
.end method

.method public static synthetic lambda$trimNotifications$0(Lcom/android/launcher3/notification/NotificationItemView;Lcom/android/launcher3/notification/NotificationInfo;)V
    .locals 3

    .line 186
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/notification/NotificationMainView;->applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Z)V

    .line 188
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setContentVisibility(I)V

    .line 190
    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    .line 191
    return-void
.end method


# virtual methods
.method public final addGutter()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mGutter:Landroid/view/View;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    const v1, 0x7f040024

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->inflateAndAdd(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mGutter:Landroid/view/View;

    .line 87
    :cond_0
    return-void
.end method

.method public final removeFooter()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->removeView(Landroid/view/View;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final trimNotifications(Ljava/util/List;)V
    .locals 11

    .line 177
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    .line 178
    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    .line 177
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    if-nez v0, :cond_3

    .line 181
    iput-boolean v1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mAnimatingNextIcon:Z

    .line 182
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setContentVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mMainView:Lcom/android/launcher3/notification/NotificationMainView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/notification/NotificationMainView;->setContentTranslation(F)V

    .line 184
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mIconView:Landroid/view/View;

    sget-object v2, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 185
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    sget-object v2, Lcom/android/launcher3/notification/NotificationItemView;->sTempRect:Landroid/graphics/Rect;

    new-instance v3, Lcom/android/launcher3/notification/-$$Lambda$NotificationItemView$zyF4hkGDqkeABZLcostu5tMK2UM;

    invoke-direct {v3, p0}, Lcom/android/launcher3/notification/-$$Lambda$NotificationItemView$zyF4hkGDqkeABZLcostu5tMK2UM;-><init>(Lcom/android/launcher3/notification/NotificationItemView;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    iget-object v6, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/notification/NotificationFooterLayout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    new-instance v8, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {v8}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    invoke-virtual {v8, v7}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v8

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v9, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v9

    int-to-float v2, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v9, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v9, v6

    add-float/2addr v2, v9

    invoke-virtual {v8, v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/anim/PropertyListBuilder;->build()[Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/launcher3/LauncherAnimUtils;->ofPropertyValuesHolder(Landroid/view/View;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v6, Lcom/android/launcher3/notification/NotificationFooterLayout$1;

    invoke-direct {v6, p1, v3, v5}, Lcom/android/launcher3/notification/NotificationFooterLayout$1;-><init>(Lcom/android/launcher3/notification/NotificationFooterLayout;Lcom/android/launcher3/notification/NotificationFooterLayout$IconAnimationEndListener;Landroid/view/View;)V

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v2, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget-object v3, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconLayoutParams:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v3}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v3

    add-int/2addr v2, v3

    iget-boolean v3, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mRtl:Z

    if-eqz v3, :cond_0

    neg-int v2, v2

    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object v3, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v6, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mNotifications:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v3}, Lcom/android/launcher3/notification/NotificationFooterLayout;->addNotificationIconForInfo(Lcom/android/launcher3/notification/NotificationInfo;)Landroid/view/View;

    move-result-object v3

    sget-object v6, Lcom/android/launcher3/notification/NotificationFooterLayout;->ALPHA:Landroid/util/Property;

    const/4 v7, 0x2

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    invoke-static {v3, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_1
    iget-object v3, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    new-instance v6, Lcom/android/launcher3/anim/PropertyResetListener;

    sget-object v7, Lcom/android/launcher3/notification/NotificationFooterLayout;->TRANSLATION_X:Landroid/util/Property;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v6, v7, v0}, Lcom/android/launcher3/anim/PropertyResetListener;-><init>(Landroid/util/Property;Ljava/lang/Object;)V

    move v0, v5

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v7, p1, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/notification/NotificationFooterLayout;->TRANSLATION_X:Landroid/util/Property;

    new-array v9, v1, [F

    int-to-float v10, v2

    aput v10, v9, v5

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    return-void

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationItemView;->mFooter:Lcom/android/launcher3/notification/NotificationFooterLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/notification/NotificationFooterLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, v0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mOverflowNotifications:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v3, v3, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    iget-object v2, v0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2
    if-ltz v2, :cond_8

    iget-object v1, v0, Lcom/android/launcher3/notification/NotificationFooterLayout;->mIconRow:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v3, v3, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v0, v1}, Lcom/android/launcher3/notification/NotificationFooterLayout;->removeViewFromIconRow(Landroid/view/View;)V

    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 195
    :cond_8
    return-void

    .line 193
    :cond_9
    :goto_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
