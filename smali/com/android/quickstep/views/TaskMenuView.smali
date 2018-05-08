.class public Lcom/android/quickstep/views/TaskMenuView;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "SourceFile"


# static fields
.field public static final MENU_OPTIONS:[Lcom/android/quickstep/TaskSystemShortcut;

.field private static final OPEN_CLOSE_DURATION:J = 0xdcL

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mActivity:Lcom/android/launcher3/BaseDraggingActivity;

.field private mOpenCloseAnimator:Landroid/animation/AnimatorSet;

.field private mTaskIconAndName:Landroid/widget/TextView;

.field private mTaskView:Lcom/android/quickstep/views/TaskView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/quickstep/TaskSystemShortcut;

    new-instance v1, Lcom/android/quickstep/TaskSystemShortcut$AppInfo;

    invoke-direct {v1}, Lcom/android/quickstep/TaskSystemShortcut$AppInfo;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;

    invoke-direct {v1}, Lcom/android/quickstep/TaskSystemShortcut$SplitScreen;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/quickstep/TaskSystemShortcut$Pin;

    invoke-direct {v1}, Lcom/android/quickstep/TaskSystemShortcut$Pin;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/android/quickstep/TaskSystemShortcut$Install;

    invoke-direct {v1}, Lcom/android/quickstep/TaskSystemShortcut$Install;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/quickstep/views/TaskMenuView;->MENU_OPTIONS:[Lcom/android/quickstep/TaskSystemShortcut;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-static {p1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    .line 76
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->setClipToOutline(Z)V

    .line 77
    new-instance p1, Lcom/android/quickstep/views/TaskMenuView$1;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/TaskMenuView$1;-><init>(Lcom/android/quickstep/views/TaskMenuView;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/TaskMenuView;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->closeComplete()V

    return-void
.end method

.method private addMenuOption(Lcom/android/quickstep/TaskSystemShortcut;Landroid/view/View$OnClickListener;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 162
    iget-object v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mIconView:Landroid/view/View;

    iget v2, p1, Lcom/android/quickstep/TaskSystemShortcut;->iconResId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 163
    iget-object v1, v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;->mBubbleText:Lcom/android/launcher3/BubbleTextView;

    iget p1, p1, Lcom/android/quickstep/TaskSystemShortcut;->labelResId:I

    invoke-virtual {v1, p1}, Lcom/android/launcher3/BubbleTextView;->setText(I)V

    .line 164
    invoke-virtual {v0, p2}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->addView(Landroid/view/View;)V

    .line 166
    return-void
.end method

.method private addMenuOptions(Lcom/android/quickstep/views/TaskView;)V
    .locals 5

    .line 144
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 145
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 146
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 147
    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskIconAndName:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskIconAndName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/quickstep/TaskUtils;->getTitle(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskIconAndName:Landroid/widget/TextView;

    new-instance v1, Lcom/android/quickstep/views/-$$Lambda$TaskMenuView$KkF9yfMo_QBp8m4wdkrjtzMAaSk;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/-$$Lambda$TaskMenuView$KkF9yfMo_QBp8m4wdkrjtzMAaSk;-><init>(Lcom/android/quickstep/views/TaskMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    sget-object v0, Lcom/android/quickstep/views/TaskMenuView;->MENU_OPTIONS:[Lcom/android/quickstep/TaskSystemShortcut;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 152
    iget-object v4, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v3, v4, p1}, Lcom/android/quickstep/TaskSystemShortcut;->getOnClickListener(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)Landroid/view/View$OnClickListener;

    move-result-object v4

    .line 153
    if-eqz v4, :cond_0

    .line 154
    invoke-direct {p0, v3, v4}, Lcom/android/quickstep/views/TaskMenuView;->addMenuOption(Lcom/android/quickstep/TaskSystemShortcut;Landroid/view/View$OnClickListener;)V

    .line 151
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    :cond_1
    return-void
.end method

.method private animateClose()V
    .locals 1

    .line 183
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpenOrClosed(Z)V

    .line 184
    return-void
.end method

.method private animateOpen()V
    .locals 1

    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpenOrClosed(Z)V

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mIsOpen:Z

    .line 180
    return-void
.end method

.method private animateOpenOrClosed(Z)V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    .line 191
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;

    move-result-object v1

    .line 192
    invoke-virtual {v1, p0, p1}, Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;->createRevealAnimator(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 193
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/quickstep/views/TaskMenuView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/views/TaskMenuView$2;-><init>(Lcom/android/quickstep/views/TaskMenuView;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 206
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/quickstep/views/TaskMenuView;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 207
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0xdc

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 208
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 209
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mOpenCloseAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 210
    return-void
.end method

.method private closeComplete()V
    .locals 1

    .line 213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mIsOpen:Z

    .line 214
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 215
    return-void
.end method

.method private createOpenCloseOutlineProvider()Lcom/android/launcher3/anim/RoundedRectRevealOutlineProvider;
    .locals 7

    .line 218
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 219
    div-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    .line 220
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v4, v1

    .line 222
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v5, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskIconAndName:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v0

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 223
    new-instance v5, Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Point;->x:I

    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v6, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v5, v0, v2, v6, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 224
    new-instance v6, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v6, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 225
    new-instance v0, Lcom/android/quickstep/views/TaskMenuView$3;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/views/TaskMenuView$3;-><init>(Lcom/android/quickstep/views/TaskMenuView;FFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static synthetic lambda$addMenuOptions$0(Lcom/android/quickstep/views/TaskMenuView;Landroid/view/View;)V
    .locals 0

    .line 149
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->close(Z)V

    return-void
.end method

.method public static synthetic lambda$i1_L2zRdfbslE_LOFUO_SzggAws(Lcom/android/quickstep/views/TaskMenuView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->animateOpen()V

    return-void
.end method

.method private orientAroundTaskView(Lcom/android/quickstep/views/TaskView;)V
    .locals 3

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/quickstep/views/TaskMenuView;->measure(II)V

    .line 170
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 171
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/views/BaseDragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object p1

    .line 172
    sget-object v0, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    sget-object v1, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 173
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    if-eqz v1, :cond_0

    neg-int v0, v0

    :goto_0
    int-to-float v0, v0

    goto :goto_1

    :cond_0
    goto :goto_0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->setX(F)V

    .line 174
    sget-object v0, Lcom/android/quickstep/views/TaskMenuView;->sTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskIconAndName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->setY(F)V

    .line 175
    return-void
.end method

.method private populateAndShowForTask(Lcom/android/quickstep/views/TaskView;)Z
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskMenuView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 136
    iput-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    .line 137
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->addMenuOptions(Lcom/android/quickstep/views/TaskView;)V

    .line 138
    iget-object p1, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskView:Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->orientAroundTaskView(Lcom/android/quickstep/views/TaskView;)V

    .line 139
    new-instance p1, Lcom/android/quickstep/views/-$$Lambda$TaskMenuView$i1_L2zRdfbslE_LOFUO_SzggAws;

    invoke-direct {p1, p0}, Lcom/android/quickstep/views/-$$Lambda$TaskMenuView$i1_L2zRdfbslE_LOFUO_SzggAws;-><init>(Lcom/android/quickstep/views/TaskMenuView;)V

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->post(Ljava/lang/Runnable;)Z

    .line 140
    const/4 p1, 0x1

    return p1
.end method

.method public static showForTask(Lcom/android/quickstep/views/TaskView;)Z
    .locals 4

    .line 125
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseDraggingActivity;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 127
    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 126
    const v2, 0x7f040039

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskMenuView;

    .line 128
    invoke-direct {v0, p0}, Lcom/android/quickstep/views/TaskMenuView;->populateAndShowForTask(Lcom/android/quickstep/views/TaskView;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected handleClose(Z)V
    .locals 0

    .line 107
    if-eqz p1, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->animateClose()V

    return-void

    .line 110
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskMenuView;->closeComplete()V

    .line 112
    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    .line 121
    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public logActionCommand(I)V
    .locals 0

    .line 117
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mActivity:Lcom/android/launcher3/BaseDraggingActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseDraggingActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 98
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskMenuView;->close(Z)V

    .line 99
    return p1

    .line 102
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 89
    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskMenuView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskMenuView;->mTaskIconAndName:Landroid/widget/TextView;

    .line 90
    return-void
.end method
