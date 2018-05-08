.class public Lcom/android/launcher3/util/ListViewHighlighter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AbsListView$RecyclerListener;


# instance fields
.field private mColorAnimated:Z

.field private final mListView:Landroid/widget/ListView;

.field private mPosHighlight:I


# direct methods
.method public constructor <init>(Landroid/widget/ListView;I)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mColorAnimated:Z

    .line 46
    iput-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    .line 47
    iput p2, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    .line 48
    iget-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 49
    iget-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 50
    iget-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 52
    iget-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    new-instance p2, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$LHpR61dAsd_XsB-T1HxobUwT3h4;

    invoke-direct {p2, p0}, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$LHpR61dAsd_XsB-T1HxobUwT3h4;-><init>(Lcom/android/launcher3/util/ListViewHighlighter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 53
    return-void
.end method

.method private highlightIfVisible(II)Z
    .locals 8

    .line 81
    iget v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    const/4 v1, 0x0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 84
    :cond_0
    iget v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    if-gt p1, v0, :cond_4

    iget v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    if-le v0, p2, :cond_1

    goto/16 :goto_1

    .line 87
    :cond_1
    iget-object p2, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    iget v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    sub-int/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v0, 0x7f0e0007

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez p2, :cond_3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f0e0006

    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x1010435

    invoke-static {p2, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result p2

    const/16 v0, 0x1a

    invoke-static {p2, v0}, Landroid/support/v4/b/a;->f(II)I

    move-result p2

    iget-boolean v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mColorAnimated:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mColorAnimated:Z

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const-string v4, "color"

    const/4 v5, 0x2

    new-array v6, v5, [I

    aput v2, v6, v1

    aput p2, v6, v3

    invoke-static {v0, v4, v6}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const-wide/16 v6, 0xc8

    invoke-virtual {p2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p2, v5}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance p2, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$Z_XONGZw1Qjdi0BQdkUZpYybff4;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$Z_XONGZw1Qjdi0BQdkUZpYybff4;-><init>(Lcom/android/launcher3/util/ListViewHighlighter;Landroid/view/View;)V

    const-wide/16 v0, 0x3a98

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 91
    iget-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 93
    iput v2, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    .line 94
    return v3

    .line 85
    :cond_4
    :goto_1
    return v1

    .line 82
    :cond_5
    :goto_2
    return v1
.end method

.method public static synthetic lambda$LHpR61dAsd_XsB-T1HxobUwT3h4(Lcom/android/launcher3/util/ListViewHighlighter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/ListViewHighlighter;->tryHighlight()V

    return-void
.end method

.method public static synthetic lambda$highlightView$0(Lcom/android/launcher3/util/ListViewHighlighter;Landroid/view/View;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ListViewHighlighter;->unhighlightView(Landroid/view/View;)V

    .line 111
    return-void
.end method

.method private tryHighlight()V
    .locals 2

    .line 62
    iget v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    .line 66
    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 65
    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ListViewHighlighter;->highlightIfVisible(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mPosHighlight:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 69
    :cond_1
    return-void

    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method private unhighlightView(Landroid/view/View;)V
    .locals 4

    .line 116
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v1, 0x7f0e0007

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const v0, 0x7f0e0006

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    .line 118
    instance-of v3, v2, Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    .line 119
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 121
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 122
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 124
    :cond_1
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/android/launcher3/util/ListViewHighlighter;->mListView:Landroid/widget/ListView;

    new-instance p2, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$LHpR61dAsd_XsB-T1HxobUwT3h4;

    invoke-direct {p2, p0}, Lcom/android/launcher3/util/-$$Lambda$ListViewHighlighter$LHpR61dAsd_XsB-T1HxobUwT3h4;-><init>(Lcom/android/launcher3/util/ListViewHighlighter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/launcher3/util/ListViewHighlighter;->unhighlightView(Landroid/view/View;)V

    .line 100
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 77
    add-int/2addr p3, p2

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/util/ListViewHighlighter;->highlightIfVisible(II)Z

    .line 78
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 72
    return-void
.end method
