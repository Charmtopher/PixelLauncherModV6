.class public Lcom/android/launcher3/notification/NotificationMainView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/touch/SwipeDetector$Listener;


# static fields
.field private static CONTENT_TRANSLATION:Landroid/util/FloatProperty;

.field public static final NOTIFICATION_ITEM_INFO:Lcom/android/launcher3/ItemInfo;


# instance fields
.field private mBackgroundColor:I

.field private final mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

.field private mIconView:Landroid/view/View;

.field public mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

.field mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

.field private mTextAndBackground:Landroid/view/ViewGroup;

.field private mTextView:Landroid/widget/TextView;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Lcom/android/launcher3/notification/NotificationMainView$1;

    const-string v1, "contentTranslation"

    invoke-direct {v0, v1}, Lcom/android/launcher3/notification/NotificationMainView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/notification/NotificationMainView;->CONTENT_TRANSLATION:Landroid/util/FloatProperty;

    .line 67
    new-instance v0, Lcom/android/launcher3/ItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    sput-object v0, Lcom/android/launcher3/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/android/launcher3/ItemInfo;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 81
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/notification/NotificationMainView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    sget-object p1, Lcom/android/launcher3/notification/NotificationMainView;->CONTENT_TRANSLATION:Landroid/util/FloatProperty;

    const/4 p2, 0x1

    new-array p2, p2, [F

    const/4 p3, 0x0

    const/4 v0, 0x0

    aput v0, p2, p3

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/notification/NotificationMainView;)Landroid/view/ViewGroup;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/launcher3/notification/NotificationMainView;)Lcom/android/launcher3/touch/SwipeDetector;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mSwipeDetector:Lcom/android/launcher3/touch/SwipeDetector;

    return-object p0
.end method


# virtual methods
.method public final applyNotificationInfo(Lcom/android/launcher3/notification/NotificationInfo;Z)V
    .locals 4

    .line 118
    iput-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    .line 119
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object p1, p1, Lcom/android/launcher3/notification/NotificationInfo;->title:Ljava/lang/CharSequence;

    .line 120
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->text:Ljava/lang/CharSequence;

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    :goto_1
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mIconView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/notification/NotificationInfo;->getIconForBackground(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 131
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object p1, p1, Lcom/android/launcher3/notification/NotificationInfo;->intent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_2

    .line 132
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->setContentTranslation(F)V

    .line 137
    sget-object p1, Lcom/android/launcher3/notification/NotificationMainView;->NOTIFICATION_ITEM_INFO:Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->setTag(Ljava/lang/Object;)V

    .line 138
    if-eqz p2, :cond_3

    .line 139
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    sget-object p2, Lcom/android/launcher3/notification/NotificationMainView;->ALPHA:Landroid/util/Property;

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x96

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 141
    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final canChildBeDismissed()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-boolean v0, v0, Lcom/android/launcher3/notification/NotificationInfo;->dismissable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onChildDismissed()V
    .locals 5

    .line 163
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 164
    iget-object v1, v0, Lcom/android/launcher3/Launcher;->mPopupDataProvider:Lcom/android/launcher3/popup/PopupDataProvider;

    iget-object v2, p0, Lcom/android/launcher3/notification/NotificationMainView;->mNotificationInfo:Lcom/android/launcher3/notification/NotificationInfo;

    iget-object v2, v2, Lcom/android/launcher3/notification/NotificationInfo;->notificationKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/popup/PopupDataProvider;->cancelNotification(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/16 v3, 0x8

    iput v3, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v3

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    const/4 v3, 0x4

    iput v3, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 170
    return-void
.end method

.method public onDrag(FF)Z
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 180
    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result p1

    int-to-float p1, p1

    .line 179
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/notification/NotificationMainView;->setContentTranslation(F)V

    .line 181
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 182
    const/4 p1, 0x1

    return p1
.end method

.method public onDragEnd(FZ)V
    .locals 8

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v0

    .line 191
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->canChildBeDismissed()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    .line 192
    if-eqz p2, :cond_1

    .line 195
    nop

    .line 196
    cmpg-float p2, p1, v5

    if-gez p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result p2

    neg-int p2, p2

    :goto_0
    int-to-float p2, p2

    .line 205
    move v5, p2

    goto :goto_1

    .line 196
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result p2

    goto :goto_0

    .line 205
    :goto_1
    move p2, v4

    goto :goto_3

    .line 197
    :cond_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v1

    div-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_3

    .line 198
    nop

    .line 199
    cmpg-float p2, v0, v5

    if-gez p2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result p2

    neg-int p2, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result p2

    :goto_2
    int-to-float v5, p2

    goto :goto_1

    .line 201
    :cond_3
    nop

    .line 202
    nop

    .line 205
    move p2, v3

    :goto_3
    sub-float v1, v5, v0

    .line 206
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v1, v6

    .line 205
    invoke-static {p1, v1}, Lcom/android/launcher3/touch/SwipeDetector;->calculateDuration(FF)J

    move-result-wide v6

    .line 208
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    .line 209
    iget-object v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 210
    invoke-static {p1}, Lcom/android/launcher3/anim/Interpolators;->scrollInterpolatorForVelocity(F)Landroid/view/animation/Interpolator;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-array v1, v2, [F

    aput v0, v1, v3

    aput v5, v1, v4

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 212
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/notification/NotificationMainView$2;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/notification/NotificationMainView$2;-><init>(Lcom/android/launcher3/notification/NotificationMainView;Z)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 221
    iget-object p1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mContentTranslateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 222
    return-void
.end method

.method public onDragStart(Z)V
    .locals 0

    .line 174
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 96
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 98
    const v0, 0x7f0e0057

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .line 100
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/notification/NotificationMainView;->mBackgroundColor:I

    .line 101
    new-instance v1, Landroid/graphics/drawable/RippleDrawable;

    .line 102
    invoke-virtual {p0}, Lcom/android/launcher3/notification/NotificationMainView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x101042c

    invoke-static {v2, v3}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v2

    .line 101
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 104
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 105
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    const v1, 0x7f0e0058

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTitleView:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    const v1, 0x7f0e0059

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextView:Landroid/widget/TextView;

    .line 107
    const v0, 0x7f0e005a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/notification/NotificationMainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mIconView:Landroid/view/View;

    .line 108
    return-void
.end method

.method public final setContentTranslation(F)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 145
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mIconView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 146
    return-void
.end method

.method public final setContentVisibility(I)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mTextAndBackground:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/android/launcher3/notification/NotificationMainView;->mIconView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    return-void
.end method
