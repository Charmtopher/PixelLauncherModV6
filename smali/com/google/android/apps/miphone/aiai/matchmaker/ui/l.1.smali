.class public Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

.field private final uR:Landroid/widget/FrameLayout;

.field final uS:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

.field private final uT:I

.field private final uU:I

.field private final uV:Landroid/util/SparseArray;

.field private final un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;


# direct methods
.method constructor <init>(Landroid/widget/FrameLayout;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uV:Landroid/util/SparseArray;

    .line 141
    iput-object p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uR:Landroid/widget/FrameLayout;

    .line 142
    iput-object p3, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

    .line 143
    iput-object p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 144
    iput-object p4, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uS:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/SuggestView;

    .line 146
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 147
    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$dimen;->selection_padding_x:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uT:I

    .line 148
    sget p2, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$dimen;->selection_padding_y:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uU:I

    .line 149
    return-void
.end method


# virtual methods
.method final n(Z)V
    .locals 16

    move-object/from16 v0, p0

    .line 41
    iget-object v1, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v1, v1, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uB:Ljava/util/List;

    .line 42
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    .line 43
    iget-object v3, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uV:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 44
    if-nez p1, :cond_1

    .line 46
    iget v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->sl:I

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 47
    :cond_1
    nop

    .line 51
    iget-object v3, v2, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;->tw:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;

    array-length v4, v3

    const/4 v5, 0x0

    move-object v8, v5

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v4, :cond_5

    aget-object v9, v3, v7

    .line 52
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 53
    iget-object v9, v9, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/E;->tH:[Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;

    array-length v11, v9

    move-object v12, v8

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v11, :cond_4

    aget-object v13, v9, v8

    .line 54
    if-nez v12, :cond_2

    .line 55
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    .line 56
    iget-object v14, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v14, v13, v12}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->b(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V

    .line 58
    :cond_2
    iget-object v14, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    invoke-virtual {v14, v13, v10}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;Landroid/graphics/RectF;)V

    .line 59
    iget-object v14, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uV:Landroid/util/SparseArray;

    iget v6, v13, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    .line 60
    if-nez v6, :cond_3

    .line 61
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 62
    iget-object v14, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uV:Landroid/util/SparseArray;

    iget v13, v13, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/z;->tn:I

    invoke-virtual {v14, v13, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 64
    :cond_3
    invoke-virtual {v6, v10}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 53
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 51
    :cond_4
    add-int/lit8 v7, v7, 0x1

    move-object v8, v12

    goto :goto_1

    .line 68
    :cond_5
    const/4 v3, 0x0

    :goto_4
    iget-object v4, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uV:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 69
    new-instance v4, Landroid/graphics/RectF;

    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uV:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    invoke-direct {v4, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 70
    iget v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uT:I

    neg-int v6, v6

    int-to-float v6, v6

    iget v7, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uU:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/graphics/RectF;->inset(FF)V

    .line 71
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 72
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v6, v7, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    iget v7, v4, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 74
    iget v7, v4, Landroid/graphics/RectF;->top:F

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 75
    iget-object v7, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uR:Landroid/widget/FrameLayout;

    .line 76
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    sget v9, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/R$layout;->gleam_line_view:I

    invoke-static {v7, v9, v5}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 78
    iget-object v9, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uR:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 79
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    if-nez p1, :cond_6

    .line 81
    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

    if-eqz v6, :cond_7

    .line 82
    invoke-static {v8}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget-object v9, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uQ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/k;

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setLongClickable(Z)V

    new-instance v9, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;

    invoke-direct {v9, v0, v7, v4}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/n;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;Landroid/widget/FrameLayout;Landroid/graphics/RectF;)V

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v9, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/o;

    invoke-direct {v9, v0, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/o;-><init>(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;Landroid/graphics/RectF;)V

    invoke-virtual {v7, v9}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_5

    .line 85
    :cond_6
    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 86
    iget-object v6, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->uA:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;

    iget-object v9, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 89
    invoke-virtual {v9, v2}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;)Landroid/graphics/RectF;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    iget-object v10, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 90
    invoke-static {v10}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/ai;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    .line 87
    iput-object v2, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uI:Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/D;

    iput-object v10, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->un:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/e;

    iget-object v10, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uH:Landroid/graphics/RectF;

    invoke-virtual {v10, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v9, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    if-eqz v9, :cond_7

    iget-object v9, v6, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/f;->uJ:Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;

    invoke-interface {v9, v6}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/r;->a(Lcom/google/android/apps/miphone/aiai/matchmaker/ui/s;)V

    .line 93
    :cond_7
    :goto_5
    iget-object v6, v0, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/l;->uR:Landroid/widget/FrameLayout;

    new-instance v9, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/m;

    invoke-direct {v9, v4, v7}, Lcom/google/android/apps/miphone/aiai/matchmaker/ui/m;-><init>(Landroid/graphics/RectF;Landroid/widget/FrameLayout;)V

    invoke-virtual {v6, v9}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 111
    :cond_8
    goto/16 :goto_0

    .line 112
    :cond_9
    return-void
.end method
