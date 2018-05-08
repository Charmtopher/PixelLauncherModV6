.class final Landroid/support/v4/app/v;
.super Landroid/support/v4/app/u;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# static fields
.field static DEBUG:Z

.field static eK:Ljava/lang/reflect/Field;

.field static final eX:Landroid/view/animation/Interpolator;

.field static final eY:Landroid/view/animation/Interpolator;

.field static final eZ:Landroid/view/animation/Interpolator;

.field static final fa:Landroid/view/animation/Interpolator;


# instance fields
.field dq:Landroid/support/v4/app/t;

.field eA:Ljava/util/ArrayList;

.field eB:Ljava/util/ArrayList;

.field eC:Ljava/util/ArrayList;

.field eD:Ljava/util/ArrayList;

.field eE:Ljava/util/ArrayList;

.field private final eF:Ljava/util/concurrent/CopyOnWriteArrayList;

.field eG:I

.field eH:Landroid/support/v4/app/r;

.field eI:Landroid/support/v4/app/Fragment;

.field eJ:Landroid/support/v4/app/Fragment;

.field eL:Z

.field eM:Z

.field eN:Ljava/lang/String;

.field eO:Z

.field eP:Ljava/util/ArrayList;

.field eQ:Ljava/util/ArrayList;

.field eR:Ljava/util/ArrayList;

.field eS:Landroid/os/Bundle;

.field eT:Landroid/util/SparseArray;

.field eU:Ljava/util/ArrayList;

.field eV:Landroid/support/v4/app/L;

.field eW:Ljava/lang/Runnable;

.field ev:Ljava/util/ArrayList;

.field ew:Z

.field ex:I

.field final ey:Ljava/util/ArrayList;

.field ez:Landroid/util/SparseArray;

.field mDestroyed:Z

.field mStopped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 664
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    .line 706
    const/4 v0, 0x0

    sput-object v0, Landroid/support/v4/app/v;->eK:Ljava/lang/reflect/Field;

    .line 1129
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/v;->eX:Landroid/view/animation/Interpolator;

    .line 1130
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/v;->eY:Landroid/view/animation/Interpolator;

    .line 1131
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/v;->eZ:Landroid/view/animation/Interpolator;

    .line 1132
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Landroid/support/v4/app/v;->fa:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 663
    invoke-direct {p0}, Landroid/support/v4/app/u;-><init>()V

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/v;->ex:I

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    .line 697
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 700
    iput v0, p0, Landroid/support/v4/app/v;->eG:I

    .line 721
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    .line 722
    iput-object v0, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    .line 730
    new-instance v0, Landroid/support/v4/app/w;

    invoke-direct {v0, p0}, Landroid/support/v4/app/w;-><init>(Landroid/support/v4/app/v;)V

    iput-object v0, p0, Landroid/support/v4/app/v;->eW:Ljava/lang/Runnable;

    .line 4072
    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/c/c;)I
    .locals 8

    .line 2483
    nop

    .line 2484
    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_7

    .line 2485
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/c;

    .line 2486
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 2487
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    iget-object v6, v2, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    iget-object v6, v2, Landroid/support/v4/app/c;->cn:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/d;

    invoke-static {v6}, Landroid/support/v4/app/c;->b(Landroid/support/v4/app/d;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 2488
    invoke-virtual {v2, p1, v5, p4}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    .line 2489
    :cond_2
    move v7, v4

    :goto_3
    if-eqz v7, :cond_6

    .line 2490
    iget-object v5, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 2491
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    .line 2493
    :cond_3
    new-instance v5, Landroid/support/v4/app/K;

    invoke-direct {v5, v2, v3}, Landroid/support/v4/app/K;-><init>(Landroid/support/v4/app/c;Z)V

    .line 2495
    iget-object v6, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2496
    invoke-virtual {v2, v5}, Landroid/support/v4/app/c;->a(Landroid/support/v4/app/l;)V

    .line 2499
    if-eqz v3, :cond_4

    .line 2500
    invoke-virtual {v2}, Landroid/support/v4/app/c;->z()V

    goto :goto_4

    .line 2502
    :cond_4
    invoke-virtual {v2, v4}, Landroid/support/v4/app/c;->c(Z)V

    .line 2506
    :goto_4
    add-int/lit8 v1, v1, -0x1

    .line 2507
    if-eq v0, v1, :cond_5

    .line 2508
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2509
    invoke-virtual {p1, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2513
    :cond_5
    invoke-direct {p0, p5}, Landroid/support/v4/app/v;->b(Landroid/support/v4/c/c;)V

    .line 2484
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2516
    :cond_7
    return v1
.end method

.method static a(FF)Landroid/support/v4/app/E;
    .locals 1

    .line 1152
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1153
    sget-object p0, Landroid/support/v4/app/v;->eY:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1154
    const-wide/16 p0, 0xdc

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1155
    new-instance p0, Landroid/support/v4/app/E;

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/E;-><init>(Landroid/view/animation/Animation;B)V

    return-object p0
.end method

.method static a(FFFF)Landroid/support/v4/app/E;
    .locals 12

    .line 1138
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1139
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    move-object v2, v11

    move v3, p0

    move v4, p1

    move v5, p0

    move v6, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1141
    sget-object p0, Landroid/support/v4/app/v;->eX:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, p0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1142
    const-wide/16 p0, 0xdc

    invoke-virtual {v11, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1143
    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1144
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1145
    sget-object p2, Landroid/support/v4/app/v;->eY:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, p2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1146
    invoke-virtual {v2, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1147
    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1148
    new-instance p0, Landroid/support/v4/app/E;

    invoke-direct {p0, v0, v1}, Landroid/support/v4/app/E;-><init>(Landroid/view/animation/Animation;B)V

    return-object p0
.end method

.method private static a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;
    .locals 2

    .line 1298
    nop

    .line 1300
    :try_start_0
    sget-object v0, Landroid/support/v4/app/v;->eK:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 1301
    const-class v0, Landroid/view/animation/Animation;

    const-string v1, "mListener"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1302
    sput-object v0, Landroid/support/v4/app/v;->eK:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1304
    :cond_0
    sget-object v0, Landroid/support/v4/app/v;->eK:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/animation/Animation$AnimationListener;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1309
    goto :goto_1

    .line 1307
    :catch_0
    move-exception p0

    .line 1308
    const-string v0, "FragmentManager"

    const-string v1, "Cannot access Animation\'s mListener field"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1305
    :catch_1
    move-exception p0

    .line 1306
    const-string v0, "FragmentManager"

    const-string v1, "No field with the name mListener is found in Animation class"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1309
    nop

    .line 1310
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method static a(Landroid/support/v4/app/L;)V
    .locals 3

    .line 2819
    if-nez p0, :cond_0

    .line 2820
    return-void

    .line 2822
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/L;->ft:Ljava/util/List;

    .line 2823
    if-eqz v0, :cond_1

    .line 2824
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2825
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->dA:Z

    .line 2826
    goto :goto_0

    .line 2828
    :cond_1
    iget-object p0, p0, Landroid/support/v4/app/L;->fu:Ljava/util/List;

    .line 2829
    if-eqz p0, :cond_2

    .line 2830
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/L;

    .line 2831
    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/L;)V

    .line 2832
    goto :goto_1

    .line 2834
    :cond_2
    return-void
.end method

.method static synthetic a(Landroid/support/v4/app/v;Landroid/support/v4/app/c;ZZZ)V
    .locals 7

    .line 663
    if-eqz p2, :cond_0

    invoke-virtual {p1, p4}, Landroid/support/v4/app/c;->c(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/c;->z()V

    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/v;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    :cond_1
    if-eqz p4, :cond_2

    iget p2, p0, Landroid/support/v4/app/v;->eG:I

    invoke-virtual {p0, p2, v6}, Landroid/support/v4/app/v;->b(IZ)V

    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 p3, 0x0

    move v0, p3

    :goto_1
    if-ge v0, p2, :cond_6

    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_5

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->dI:Z

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/Fragment;->dv:I

    invoke-virtual {p1, v2}, Landroid/support/v4/app/c;->h(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v1, Landroid/support/v4/app/Fragment;->dK:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v4, v1, Landroid/support/v4/app/Fragment;->dK:F

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    if-eqz p4, :cond_4

    iput v3, v1, Landroid/support/v4/app/Fragment;->dK:F

    goto :goto_2

    :cond_4
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v1, Landroid/support/v4/app/Fragment;->dK:F

    iput-boolean p3, v1, Landroid/support/v4/app/Fragment;->dI:Z

    :cond_5
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    return-void
.end method

.method private a(Landroid/support/v4/c/c;)V
    .locals 5

    .line 2457
    invoke-virtual {p1}, Landroid/support/v4/c/c;->size()I

    move-result v0

    .line 2458
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2459
    iget-object v2, p1, Landroid/support/v4/c/c;->jm:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2460
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->di:Z

    if-nez v3, :cond_0

    .line 2461
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 2462
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroid/support/v4/app/Fragment;->dK:F

    .line 2463
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    .line 2458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2466
    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;Landroid/support/v4/app/E;)V
    .locals 5

    .line 1276
    if-eqz p0, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_4

    .line 1279
    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_1

    goto :goto_3

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0}, Landroid/support/v4/view/n;->p(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AlphaAnimation;

    if-eqz v2, :cond_2

    :goto_0
    move v2, v0

    goto :goto_2

    :cond_2
    iget-object v2, p1, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    instance-of v2, v2, Landroid/view/animation/AnimationSet;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    check-cast v2, Landroid/view/animation/AnimationSet;

    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v2

    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/view/animation/AlphaAnimation;

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    iget-object v2, p1, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    invoke-static {v2}, Landroid/support/v4/app/v;->b(Landroid/animation/Animator;)Z

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    move v1, v0

    nop

    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    .line 1280
    iget-object v0, p1, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    if-eqz v0, :cond_7

    .line 1281
    iget-object p1, p1, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    new-instance v0, Landroid/support/v4/app/F;

    invoke-direct {v0, p0}, Landroid/support/v4/app/F;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    .line 1283
    :cond_7
    iget-object v0, p1, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    invoke-static {v0}, Landroid/support/v4/app/v;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v0

    .line 1287
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1288
    iget-object p1, p1, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    new-instance v1, Landroid/support/v4/app/B;

    invoke-direct {v1, p0, v0}, Landroid/support/v4/app/B;-><init>(Landroid/view/View;Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1292
    :cond_8
    return-void

    .line 1277
    :cond_9
    :goto_4
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)V
    .locals 5

    .line 787
    const-string v0, "FragmentManager"

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v0, "FragmentManager"

    const-string v1, "Activity state:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    new-instance v0, Landroid/support/v4/c/g;

    const-string v1, "FragmentManager"

    invoke-direct {v0, v1}, Landroid/support/v4/c/g;-><init>(Ljava/lang/String;)V

    .line 790
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 793
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    const-string v4, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/support/v4/app/t;->onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 794
    :catch_0
    move-exception v0

    .line 795
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 796
    :goto_0
    goto :goto_1

    .line 799
    :cond_0
    :try_start_1
    const-string v0, "  "

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v1, v2}, Landroid/support/v4/app/v;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 802
    goto :goto_1

    .line 800
    :catch_1
    move-exception v0

    .line 801
    const-string v1, "FragmentManager"

    const-string v2, "Failed dumping state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    :goto_1
    throw p1
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15

    move-object v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 2392
    move/from16 v10, p4

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    iget-boolean v11, v1, Landroid/support/v4/app/c;->cE:Z

    .line 2393
    nop

    .line 2394
    iget-object v1, v7, Landroid/support/v4/app/v;->eR:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 2395
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Landroid/support/v4/app/v;->eR:Ljava/util/ArrayList;

    goto :goto_0

    .line 2397
    :cond_0
    iget-object v1, v7, Landroid/support/v4/app/v;->eR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2399
    :goto_0
    iget-object v1, v7, Landroid/support/v4/app/v;->eR:Ljava/util/ArrayList;

    iget-object v2, v7, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2400
    iget-object v1, v7, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    .line 2401
    const/4 v2, 0x0

    move-object v3, v1

    move v12, v2

    move v1, v9

    :goto_1
    const/4 v13, 0x1

    if-ge v1, v10, :cond_4

    .line 2402
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/c;

    .line 2403
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 2404
    if-nez v5, :cond_1

    .line 2405
    iget-object v5, v7, Landroid/support/v4/app/v;->eR:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    goto :goto_2

    .line 2407
    :cond_1
    iget-object v5, v7, Landroid/support/v4/app/v;->eR:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/c;->b(Ljava/util/ArrayList;Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 2409
    :goto_2
    if-nez v12, :cond_3

    iget-boolean v4, v4, Landroid/support/v4/app/c;->cu:Z

    if-eqz v4, :cond_2

    goto :goto_3

    .line 2401
    :cond_2
    move v12, v2

    goto :goto_4

    .line 2409
    :cond_3
    :goto_3
    nop

    .line 2401
    move v12, v13

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2411
    :cond_4
    iget-object v1, v7, Landroid/support/v4/app/v;->eR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2413
    if-nez v11, :cond_5

    .line 2414
    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/v;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2417
    :cond_5
    invoke-static/range {p1 .. p4}, Landroid/support/v4/app/v;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2419
    nop

    .line 2420
    if-eqz v11, :cond_6

    .line 2421
    new-instance v14, Landroid/support/v4/c/c;

    invoke-direct {v14}, Landroid/support/v4/c/c;-><init>()V

    .line 2422
    invoke-direct {v7, v14}, Landroid/support/v4/app/v;->b(Landroid/support/v4/c/c;)V

    .line 2423
    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move v4, v9

    move v5, v10

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Landroid/support/v4/app/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;IILandroid/support/v4/c/c;)I

    move-result v1

    .line 2425
    invoke-direct {v7, v14}, Landroid/support/v4/app/v;->a(Landroid/support/v4/c/c;)V

    .line 2428
    move v5, v1

    goto :goto_5

    :cond_6
    move v5, v10

    :goto_5
    if-eq v5, v9, :cond_7

    if-eqz v11, :cond_7

    .line 2430
    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v0

    move-object v3, v8

    move v4, v9

    invoke-static/range {v1 .. v6}, Landroid/support/v4/app/R;->a(Landroid/support/v4/app/v;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZ)V

    .line 2432
    iget v1, v7, Landroid/support/v4/app/v;->eG:I

    invoke-virtual {v7, v1, v13}, Landroid/support/v4/app/v;->b(IZ)V

    .line 2435
    :cond_7
    :goto_6
    if-ge v9, v10, :cond_b

    .line 2436
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    .line 2437
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 2438
    if-eqz v2, :cond_a

    iget v2, v1, Landroid/support/v4/app/c;->cx:I

    if-ltz v2, :cond_a

    .line 2439
    iget v2, v1, Landroid/support/v4/app/c;->cx:I

    monitor-enter p0

    :try_start_0
    iget-object v3, v7, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v7, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    if-nez v3, :cond_8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v7, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    :cond_8
    sget-boolean v3, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Freeing back stack index "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v3, v7, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2440
    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/c;->cx:I

    goto :goto_7

    .line 2439
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2442
    :cond_a
    :goto_7
    invoke-virtual {v1}, Landroid/support/v4/app/c;->y()V

    .line 2435
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 2444
    :cond_b
    if-eqz v12, :cond_c

    .line 2445
    invoke-virtual {v7}, Landroid/support/v4/app/v;->an()V

    .line 2447
    :cond_c
    return-void
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 8

    .line 867
    invoke-virtual {p0}, Landroid/support/v4/app/v;->execPendingActions()Z

    .line 868
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/v;->f(Z)V

    .line 870
    iget-object v1, p0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    if-gez p2, :cond_0

    if-nez p1, :cond_0

    .line 873
    iget-object v1, p0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    .line 874
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/u;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    return v0

    .line 880
    :cond_0
    iget-object v3, p0, Landroid/support/v4/app/v;->eP:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/v;->eQ:Ljava/util/ArrayList;

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    .line 881
    if-eqz p1, :cond_1

    .line 882
    iput-boolean v0, p0, Landroid/support/v4/app/v;->ew:Z

    .line 884
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/app/v;->eP:Ljava/util/ArrayList;

    iget-object p3, p0, Landroid/support/v4/app/v;->eQ:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p3}, Landroid/support/v4/app/v;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-direct {p0}, Landroid/support/v4/app/v;->ak()V

    .line 887
    goto :goto_0

    .line 886
    :catchall_0
    move-exception p1

    invoke-direct {p0}, Landroid/support/v4/app/v;->ak()V

    throw p1

    .line 890
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/v;->am()V

    .line 891
    invoke-direct {p0}, Landroid/support/v4/app/v;->ap()V

    .line 892
    return p1
.end method

.method private ai()V
    .locals 3

    .line 2086
    invoke-virtual {p0}, Landroid/support/v4/app/v;->isStateSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2090
    iget-object v0, p0, Landroid/support/v4/app/v;->eN:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2094
    return-void

    .line 2091
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not perform this action inside of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/v;->eN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2087
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private aj()V
    .locals 4

    .line 2138
    monitor-enter p0

    .line 2139
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    .line 2140
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2141
    move v0, v2

    goto :goto_0

    .line 2140
    :cond_0
    nop

    .line 2141
    move v0, v1

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_1

    .line 2142
    move v1, v2

    goto :goto_1

    .line 2141
    :cond_1
    nop

    .line 2142
    :goto_1
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 2143
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/v;->eW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2144
    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v4/app/v;->eW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2146
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ak()V
    .locals 1

    .line 2264
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/v;->ew:Z

    .line 2265
    iget-object v0, p0, Landroid/support/v4/app/v;->eQ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2266
    iget-object v0, p0, Landroid/support/v4/app/v;->eP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2267
    return-void
.end method

.method private al()V
    .locals 2

    .line 2664
    iget-object v0, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2665
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2666
    iget-object v0, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/K;

    invoke-virtual {v0}, Landroid/support/v4/app/K;->aq()V

    goto :goto_0

    .line 2669
    :cond_0
    return-void
.end method

.method private ap()V
    .locals 3

    .line 3195
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 3196
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3197
    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3198
    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget-object v2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 3196
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3202
    :cond_1
    return-void
.end method

.method static synthetic b(Landroid/support/v4/app/v;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Landroid/support/v4/app/v;->aj()V

    return-void
.end method

.method private b(Landroid/support/v4/c/c;)V
    .locals 10

    .line 2642
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    if-gtz v0, :cond_0

    .line 2643
    return-void

    .line 2646
    :cond_0
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2647
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2648
    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v1, :cond_2

    .line 2649
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/support/v4/app/Fragment;

    .line 2650
    iget v2, v9, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v2, v0, :cond_1

    .line 2651
    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->Q()I

    move-result v5

    invoke-virtual {v9}, Landroid/support/v4/app/Fragment;->R()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v9

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 2653
    iget-object v2, v9, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez v2, :cond_1

    iget-boolean v2, v9, Landroid/support/v4/app/Fragment;->dI:Z

    if-eqz v2, :cond_1

    .line 2654
    invoke-virtual {p1, v9}, Landroid/support/v4/c/c;->add(Ljava/lang/Object;)Z

    .line 2648
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2658
    :cond_2
    return-void
.end method

.method private b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8

    .line 2298
    iget-object v0, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2299
    move v0, v1

    goto :goto_0

    .line 2298
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2299
    :goto_0
    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_6

    .line 2300
    iget-object v3, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/K;

    .line 2301
    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    iget-boolean v6, v3, Landroid/support/v4/app/K;->fq:Z

    if-nez v6, :cond_1

    .line 2302
    iget-object v6, v3, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 2303
    if-eq v6, v5, :cond_1

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2304
    invoke-virtual {v3}, Landroid/support/v4/app/K;->ar()V

    .line 2305
    goto :goto_3

    .line 2308
    :cond_1
    iget v6, v3, Landroid/support/v4/app/K;->fs:I

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 2309
    iget-object v6, v3, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Landroid/support/v4/app/c;->a(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2310
    :cond_3
    iget-object v6, p0, Landroid/support/v4/app/v;->eU:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2311
    add-int/lit8 v0, v0, -0x1

    .line 2312
    add-int/lit8 v2, v2, -0x1

    .line 2314
    if-eqz p1, :cond_4

    iget-boolean v6, v3, Landroid/support/v4/app/K;->fq:Z

    if-nez v6, :cond_4

    .line 2315
    iget-object v6, v3, Landroid/support/v4/app/K;->fr:Landroid/support/v4/app/c;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    .line 2316
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2318
    invoke-virtual {v3}, Landroid/support/v4/app/K;->ar()V

    goto :goto_3

    .line 2320
    :cond_4
    invoke-virtual {v3}, Landroid/support/v4/app/K;->aq()V

    .line 2299
    :cond_5
    :goto_3
    add-int/2addr v0, v4

    goto :goto_1

    .line 2324
    :cond_6
    return-void
.end method

.method private static b(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3

    .line 2619
    :goto_0
    if-ge p2, p3, :cond_2

    .line 2620
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 2621
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2622
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2623
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/c;->g(I)V

    .line 2626
    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2627
    :goto_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/c;->c(Z)V

    .line 2628
    goto :goto_2

    .line 2629
    :cond_1
    invoke-virtual {v0, v2}, Landroid/support/v4/app/c;->g(I)V

    .line 2630
    invoke-virtual {v0}, Landroid/support/v4/app/c;->z()V

    .line 2619
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 2633
    :cond_2
    return-void
.end method

.method static b(Landroid/animation/Animator;)Z
    .locals 5

    .line 754
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 755
    return v0

    .line 757
    :cond_0
    instance-of v1, p0, Landroid/animation/ValueAnimator;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 758
    check-cast p0, Landroid/animation/ValueAnimator;

    .line 759
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    .line 760
    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    .line 761
    const-string v3, "alpha"

    aget-object v4, p0, v1

    invoke-virtual {v4}, Landroid/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    return v2

    .line 760
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    :cond_2
    goto :goto_2

    :cond_3
    instance-of v1, p0, Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_5

    .line 766
    check-cast p0, Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object p0

    .line 767
    move v1, v0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 768
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    invoke-static {v3}, Landroid/support/v4/app/v;->b(Landroid/animation/Animator;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 769
    return v2

    .line 767
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 773
    :cond_5
    :goto_2
    return v0
.end method

.method private c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    .line 2342
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2346
    :cond_0
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 2351
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/v;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 2353
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2354
    nop

    .line 2355
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_4

    .line 2356
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    iget-boolean v3, v3, Landroid/support/v4/app/c;->cE:Z

    .line 2357
    if-nez v3, :cond_3

    .line 2359
    if-eq v2, v1, :cond_1

    .line 2360
    invoke-direct {p0, p1, p2, v2, v1}, Landroid/support/v4/app/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2364
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 2365
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2366
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2367
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2368
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    iget-boolean v3, v3, Landroid/support/v4/app/c;->cE:Z

    if-nez v3, :cond_2

    .line 2369
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2372
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Landroid/support/v4/app/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2373
    nop

    .line 2374
    add-int/lit8 v1, v2, -0x1

    .line 2355
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2377
    :cond_4
    if-eq v2, v0, :cond_5

    .line 2378
    invoke-direct {p0, p1, p2, v2, v0}, Landroid/support/v4/app/v;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    .line 2380
    :cond_5
    return-void

    .line 2347
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2343
    :cond_7
    :goto_2
    return-void
.end method

.method private d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 4

    .line 2712
    nop

    .line 2713
    monitor-enter p0

    .line 2714
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2718
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2719
    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2720
    iget-object v3, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/I;

    invoke-interface {v3, p1, p2}, Landroid/support/v4/app/I;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 2719
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2722
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 2723
    iget-object p1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object p1, p1, Landroid/support/v4/app/t;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v4/app/v;->eW:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2724
    monitor-exit p0

    .line 2725
    return v2

    .line 2715
    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    .line 2724
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private f(Z)V
    .locals 2

    .line 2212
    iget-boolean v0, p0, Landroid/support/v4/app/v;->ew:Z

    if-nez v0, :cond_4

    .line 2216
    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    if-eqz v0, :cond_3

    .line 2220
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 2224
    if-nez p1, :cond_0

    .line 2225
    invoke-direct {p0}, Landroid/support/v4/app/v;->ai()V

    .line 2228
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eP:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    .line 2229
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/v;->eP:Ljava/util/ArrayList;

    .line 2230
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/v;->eQ:Ljava/util/ArrayList;

    .line 2232
    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/v;->ew:Z

    .line 2234
    const/4 p1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0, v0}, Landroid/support/v4/app/v;->b(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2236
    iput-boolean p1, p0, Landroid/support/v4/app/v;->ew:Z

    .line 2237
    return-void

    .line 2236
    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Landroid/support/v4/app/v;->ew:Z

    throw v0

    .line 2221
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2217
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fragment host has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2213
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static n(I)I
    .locals 3

    .line 3664
    nop

    .line 3665
    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    .line 3676
    const/4 v0, 0x0

    goto :goto_0

    .line 3670
    :cond_0
    nop

    .line 3671
    nop

    .line 3676
    move v0, v2

    goto :goto_0

    .line 3673
    :cond_1
    nop

    .line 3676
    move v0, v1

    goto :goto_0

    .line 3667
    :cond_2
    nop

    .line 3668
    nop

    .line 3676
    :goto_0
    return v0
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/c;)I
    .locals 4

    .line 2150
    monitor-enter p0

    .line 2151
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2161
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2162
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2164
    monitor-exit p0

    return v0

    .line 2152
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 2153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    .line 2155
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2156
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2158
    monitor-exit p0

    return v0

    .line 2166
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/E;
    .locals 5

    .line 1160
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Q()I

    move-result p1

    .line 1161
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 1172
    iget-object v1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 1173
    const-string v2, "anim"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1174
    nop

    .line 1175
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1178
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v3, v3, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 1179
    if-eqz v3, :cond_0

    .line 1180
    new-instance v4, Landroid/support/v4/app/E;

    invoke-direct {v4, v3, v2}, Landroid/support/v4/app/E;-><init>(Landroid/view/animation/Animation;B)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1183
    :cond_0
    nop

    .line 1188
    nop

    .line 1190
    move v3, v0

    goto :goto_1

    .line 1186
    :catch_0
    move-exception v3

    goto :goto_0

    .line 1184
    :catch_1
    move-exception p1

    throw p1

    .line 1190
    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-nez v3, :cond_4

    .line 1193
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v3, v3, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 1194
    if-eqz v3, :cond_2

    .line 1195
    new-instance v4, Landroid/support/v4/app/E;

    invoke-direct {v4, v3, v2}, Landroid/support/v4/app/E;-><init>(Landroid/animation/Animator;B)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v4

    .line 1207
    :cond_2
    goto :goto_2

    .line 1197
    :catch_2
    move-exception v3

    .line 1198
    if-nez v1, :cond_3

    .line 1203
    iget-object v1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 1204
    if-eqz p1, :cond_4

    .line 1205
    new-instance p2, Landroid/support/v4/app/E;

    invoke-direct {p2, p1, v2}, Landroid/support/v4/app/E;-><init>(Landroid/view/animation/Animation;B)V

    return-object p2

    .line 1200
    :cond_3
    throw v3

    .line 1211
    :cond_4
    :goto_2
    const/4 p1, 0x0

    if-nez p2, :cond_5

    .line 1212
    return-object p1

    .line 1215
    :cond_5
    const/4 v1, -0x1

    const/16 v2, 0x1001

    if-eq p2, v2, :cond_a

    const/16 v0, 0x1003

    if-eq p2, v0, :cond_8

    const/16 v0, 0x2002

    if-eq p2, v0, :cond_6

    goto :goto_5

    :cond_6
    if-eqz p3, :cond_7

    const/4 p2, 0x3

    .line 1216
    :goto_3
    move v1, p2

    goto :goto_5

    .line 1215
    :cond_7
    const/4 p2, 0x4

    goto :goto_3

    :cond_8
    if-eqz p3, :cond_9

    const/4 p2, 0x5

    goto :goto_3

    :cond_9
    const/4 p2, 0x6

    goto :goto_3

    :cond_a
    if-eqz p3, :cond_b

    .line 1216
    :goto_4
    move v1, v0

    goto :goto_5

    .line 1215
    :cond_b
    const/4 v0, 0x2

    goto :goto_4

    .line 1216
    :goto_5
    if-gez v1, :cond_c

    .line 1217
    return-object p1

    .line 1220
    :cond_c
    const p2, 0x3f79999a    # 0.975f

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    packed-switch v1, :pswitch_data_0

    .line 1236
    if-nez p4, :cond_d

    iget-object p2, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    invoke-virtual {p2}, Landroid/support/v4/app/t;->onHasWindowAnimations()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1237
    iget-object p2, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    invoke-virtual {p2}, Landroid/support/v4/app/t;->onGetWindowAnimations()I

    move-result p4

    goto :goto_6

    .line 1232
    :pswitch_0
    invoke-static {v0, p3}, Landroid/support/v4/app/v;->a(FF)Landroid/support/v4/app/E;

    move-result-object p1

    return-object p1

    .line 1230
    :pswitch_1
    invoke-static {p3, v0}, Landroid/support/v4/app/v;->a(FF)Landroid/support/v4/app/E;

    move-result-object p1

    return-object p1

    .line 1228
    :pswitch_2
    const p1, 0x3f89999a    # 1.075f

    invoke-static {v0, p1, v0, p3}, Landroid/support/v4/app/v;->a(FFFF)Landroid/support/v4/app/E;

    move-result-object p1

    return-object p1

    .line 1226
    :pswitch_3
    invoke-static {p2, v0, p3, v0}, Landroid/support/v4/app/v;->a(FFFF)Landroid/support/v4/app/E;

    move-result-object p1

    return-object p1

    .line 1224
    :pswitch_4
    invoke-static {v0, p2, v0, p3}, Landroid/support/v4/app/v;->a(FFFF)Landroid/support/v4/app/E;

    move-result-object p1

    return-object p1

    .line 1222
    :pswitch_5
    const/high16 p1, 0x3f900000    # 1.125f

    invoke-static {p1, v0, p3, v0}, Landroid/support/v4/app/v;->a(FFFF)Landroid/support/v4/app/E;

    move-result-object p1

    return-object p1

    .line 1239
    :cond_d
    :goto_6
    if-nez p4, :cond_e

    .line 1240
    return-object p1

    .line 1253
    :cond_e
    return-object p1

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

.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 2074
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2075
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 2076
    iget-object v2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 2077
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->dd:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/v;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 2078
    return-object v2

    .line 2075
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2082
    :cond_3
    return-object v1
.end method

.method public final a(ILandroid/support/v4/app/c;)V
    .locals 4

    .line 2170
    monitor-enter p0

    .line 2171
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    .line 2174
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2175
    if-ge p1, v0, :cond_2

    .line 2176
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2179
    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 2180
    iget-object v1, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2181
    iget-object v1, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 2182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    .line 2184
    :cond_3
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Adding available back stack index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2185
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2188
    :cond_5
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adding back stack index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    :cond_6
    iget-object p1, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2191
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Landroid/os/Parcelable;Landroid/support/v4/app/L;)V
    .locals 17

    move-object/from16 v0, p0

    .line 3059
    move-object/from16 v2, p2

    if-nez p1, :cond_0

    return-void

    .line 3060
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Landroid/support/v4/app/FragmentManagerState;

    .line 3061
    iget-object v3, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    if-nez v3, :cond_1

    return-void

    .line 3063
    :cond_1
    nop

    .line 3064
    nop

    .line 3068
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 3069
    iget-object v5, v2, Landroid/support/v4/app/L;->ft:Ljava/util/List;

    .line 3070
    iget-object v6, v2, Landroid/support/v4/app/L;->fu:Ljava/util/List;

    .line 3071
    iget-object v7, v2, Landroid/support/v4/app/L;->fv:Ljava/util/List;

    .line 3072
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    goto :goto_0

    .line 3073
    :cond_2
    move v8, v4

    :goto_0
    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_8

    .line 3074
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/Fragment;

    .line 3075
    sget-boolean v11, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "FragmentManager"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "restoreAllState: re-attaching retained "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3076
    :cond_3
    nop

    .line 3077
    move v11, v4

    :goto_2
    iget-object v12, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    array-length v12, v12

    if-ge v11, v12, :cond_4

    iget-object v12, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    aget-object v12, v12, v11

    iget v12, v12, Landroid/support/v4/app/FragmentState;->cx:I

    iget v13, v10, Landroid/support/v4/app/Fragment;->cx:I

    if-eq v12, v13, :cond_4

    .line 3078
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 3080
    :cond_4
    iget-object v12, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    array-length v12, v12

    if-ne v11, v12, :cond_5

    .line 3081
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Could not find active fragment with index "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v14, v10, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v12}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    .line 3084
    :cond_5
    iget-object v12, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    aget-object v11, v12, v11

    .line 3085
    iput-object v10, v11, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    .line 3086
    iput-object v3, v10, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    .line 3087
    iput v4, v10, Landroid/support/v4/app/Fragment;->do:I

    .line 3088
    iput-boolean v4, v10, Landroid/support/v4/app/Fragment;->dl:Z

    .line 3089
    iput-boolean v4, v10, Landroid/support/v4/app/Fragment;->di:Z

    .line 3090
    iput-object v3, v10, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    .line 3091
    iget-object v12, v11, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    if-eqz v12, :cond_6

    .line 3092
    iget-object v12, v11, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    iget-object v13, v0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v13, v13, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 3093
    iget-object v12, v11, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    const-string v13, "android:view_state"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v12

    iput-object v12, v10, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    .line 3095
    iget-object v11, v11, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    iput-object v11, v10, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    .line 3073
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 3102
    :cond_7
    move-object v6, v3

    move-object v7, v6

    :cond_8
    new-instance v5, Landroid/util/SparseArray;

    iget-object v8, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    invoke-direct {v5, v8}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v5, v0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    .line 3103
    move v5, v4

    :goto_3
    iget-object v8, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    array-length v8, v8

    const/4 v9, 0x1

    if-ge v5, v8, :cond_11

    .line 3104
    iget-object v8, v1, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    aget-object v8, v8, v5

    .line 3105
    if-eqz v8, :cond_10

    .line 3106
    nop

    .line 3107
    if-eqz v6, :cond_9

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_9

    .line 3108
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/L;

    goto :goto_4

    .line 3110
    :cond_9
    move-object v10, v3

    .line 3111
    :goto_4
    if-eqz v7, :cond_a

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_a

    .line 3112
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/arch/lifecycle/E;

    goto :goto_5

    .line 3114
    :cond_a
    move-object v11, v3

    :goto_5
    iget-object v12, v0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v13, v0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    iget-object v14, v0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v15, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    if-nez v15, :cond_e

    iget-object v15, v12, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    iget-object v4, v8, Landroid/support/v4/app/FragmentState;->de:Landroid/os/Bundle;

    if-eqz v4, :cond_b

    iget-object v4, v8, Landroid/support/v4/app/FragmentState;->de:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    if-eqz v13, :cond_c

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fA:Ljava/lang/String;

    iget-object v4, v8, Landroid/support/v4/app/FragmentState;->de:Landroid/os/Bundle;

    invoke-virtual {v13, v15, v3, v4}, Landroid/support/v4/app/r;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    :goto_6
    iput-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    goto :goto_7

    :cond_c
    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fA:Ljava/lang/String;

    iget-object v4, v8, Landroid/support/v4/app/FragmentState;->de:Landroid/os/Bundle;

    invoke-static {v15, v3, v4}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    goto :goto_6

    :goto_7
    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    if-eqz v3, :cond_d

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    invoke-virtual {v15}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget-object v4, v8, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    :cond_d
    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget v4, v8, Landroid/support/v4/app/FragmentState;->cx:I

    invoke-virtual {v3, v4, v14}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget-boolean v4, v8, Landroid/support/v4/app/FragmentState;->dk:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->dk:Z

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iput-boolean v9, v3, Landroid/support/v4/app/Fragment;->dm:Z

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget v4, v8, Landroid/support/v4/app/FragmentState;->du:I

    iput v4, v3, Landroid/support/v4/app/Fragment;->du:I

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget v4, v8, Landroid/support/v4/app/FragmentState;->dv:I

    iput v4, v3, Landroid/support/v4/app/Fragment;->dv:I

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget-object v4, v8, Landroid/support/v4/app/FragmentState;->dw:Ljava/lang/String;

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget-boolean v4, v8, Landroid/support/v4/app/FragmentState;->dz:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->dz:Z

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget-boolean v4, v8, Landroid/support/v4/app/FragmentState;->dy:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->dy:Z

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget-boolean v4, v8, Landroid/support/v4/app/FragmentState;->dx:Z

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->dx:Z

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iget-object v4, v12, Landroid/support/v4/app/t;->dp:Landroid/support/v4/app/v;

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    sget-boolean v3, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v3, :cond_e

    const-string v3, "FragmentManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "Instantiated fragment "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iput-object v10, v3, Landroid/support/v4/app/Fragment;->ds:Landroid/support/v4/app/L;

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    iput-object v11, v3, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    iget-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    .line 3116
    sget-boolean v4, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v4, :cond_f

    const-string v4, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "restoreAllState: active #"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3117
    :cond_f
    iget-object v4, v0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget v9, v3, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v4, v9, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3121
    const/4 v3, 0x0

    iput-object v3, v8, Landroid/support/v4/app/FragmentState;->fB:Landroid/support/v4/app/Fragment;

    .line 3103
    :cond_10
    add-int/lit8 v5, v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    goto/16 :goto_3

    .line 3126
    :cond_11
    if-eqz v2, :cond_14

    .line 3127
    iget-object v2, v2, Landroid/support/v4/app/L;->ft:Ljava/util/List;

    .line 3128
    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_8

    .line 3129
    :cond_12
    const/4 v4, 0x0

    :goto_8
    const/4 v3, 0x0

    :goto_9
    if-ge v3, v4, :cond_14

    .line 3130
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    .line 3131
    iget v6, v5, Landroid/support/v4/app/Fragment;->dg:I

    if-ltz v6, :cond_13

    .line 3132
    iget-object v6, v0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget v7, v5, Landroid/support/v4/app/Fragment;->dg:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    .line 3133
    iget-object v6, v5, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    if-nez v6, :cond_13

    .line 3134
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Re-attaching retained fragment "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " target no longer exists: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/support/v4/app/Fragment;->dg:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 3142
    :cond_14
    iget-object v2, v0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 3143
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerState;->fx:[I

    if-eqz v2, :cond_18

    .line 3144
    const/4 v2, 0x0

    :goto_a
    iget-object v3, v1, Landroid/support/v4/app/FragmentManagerState;->fx:[I

    array-length v3, v3

    if-ge v2, v3, :cond_18

    .line 3145
    iget-object v3, v0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget-object v4, v1, Landroid/support/v4/app/FragmentManagerState;->fx:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3146
    if-nez v3, :cond_15

    .line 3147
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No instantiated fragment for index #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Landroid/support/v4/app/FragmentManagerState;->fx:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v4}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    .line 3150
    :cond_15
    iput-boolean v9, v3, Landroid/support/v4/app/Fragment;->di:Z

    .line 3151
    sget-boolean v4, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v4, :cond_16

    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreAllState: added #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    :cond_16
    iget-object v4, v0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 3155
    iget-object v4, v0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    monitor-enter v4

    .line 3156
    :try_start_0
    iget-object v5, v0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3157
    monitor-exit v4

    .line 3144
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 3157
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3153
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already added!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3162
    :cond_18
    iget-object v2, v1, Landroid/support/v4/app/FragmentManagerState;->fy:[Landroid/support/v4/app/BackStackState;

    if-eqz v2, :cond_1b

    .line 3163
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/support/v4/app/FragmentManagerState;->fy:[Landroid/support/v4/app/BackStackState;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    .line 3164
    const/4 v2, 0x0

    :goto_b
    iget-object v3, v1, Landroid/support/v4/app/FragmentManagerState;->fy:[Landroid/support/v4/app/BackStackState;

    array-length v3, v3

    if-ge v2, v3, :cond_1c

    .line 3165
    iget-object v3, v1, Landroid/support/v4/app/FragmentManagerState;->fy:[Landroid/support/v4/app/BackStackState;

    aget-object v3, v3, v2

    invoke-virtual {v3, v0}, Landroid/support/v4/app/BackStackState;->a(Landroid/support/v4/app/v;)Landroid/support/v4/app/c;

    move-result-object v3

    .line 3166
    sget-boolean v4, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v4, :cond_19

    .line 3167
    const-string v4, "FragmentManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "restoreAllState: back stack #"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (index "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Landroid/support/v4/app/c;->cx:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    new-instance v4, Landroid/support/v4/c/g;

    const-string v5, "FragmentManager"

    invoke-direct {v4, v5}, Landroid/support/v4/c/g;-><init>(Ljava/lang/String;)V

    .line 3170
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 3171
    const-string v4, "  "

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/c;->a(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 3172
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    goto :goto_c

    .line 3174
    :cond_19
    const/4 v6, 0x0

    :goto_c
    iget-object v4, v0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3175
    iget v4, v3, Landroid/support/v4/app/c;->cx:I

    if-ltz v4, :cond_1a

    .line 3176
    iget v4, v3, Landroid/support/v4/app/c;->cx:I

    invoke-virtual {v0, v4, v3}, Landroid/support/v4/app/v;->a(ILandroid/support/v4/app/c;)V

    .line 3164
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3180
    :cond_1b
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    .line 3183
    :cond_1c
    iget v2, v1, Landroid/support/v4/app/FragmentManagerState;->fz:I

    if-ltz v2, :cond_1d

    .line 3184
    iget-object v2, v0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget v3, v1, Landroid/support/v4/app/FragmentManagerState;->fz:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    iput-object v2, v0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    .line 3186
    :cond_1d
    iget v1, v1, Landroid/support/v4/app/FragmentManagerState;->ex:I

    iput v1, v0, Landroid/support/v4/app/v;->ex:I

    .line 3187
    return-void
.end method

.method final a(Landroid/support/v4/app/Fragment;IIIZ)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 1321
    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->di:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->dy:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1324
    :cond_0
    move/from16 v0, p2

    goto :goto_1

    .line 1321
    :cond_1
    :goto_0
    move/from16 v0, p2

    if-le v0, v9, :cond_2

    .line 1322
    nop

    .line 1324
    move v0, v9

    :cond_2
    :goto_1
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dj:Z

    if-eqz v1, :cond_4

    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-le v0, v1, :cond_4

    .line 1325
    iget v0, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-nez v0, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->B()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1327
    nop

    .line 1335
    move v0, v9

    goto :goto_2

    .line 1330
    :cond_3
    iget v0, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1335
    :cond_4
    :goto_2
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dF:Z

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-eqz v1, :cond_5

    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-ge v1, v10, :cond_5

    if-le v0, v11, :cond_5

    .line 1336
    nop

    .line 1338
    move v0, v11

    :cond_5
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v12, -0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-gt v1, v0, :cond_29

    .line 1342
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dk:Z

    if-eqz v1, :cond_6

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dl:Z

    if-nez v1, :cond_6

    .line 1343
    return-void

    .line 1345
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1350
    :cond_7
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    .line 1351
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1352
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->X()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1354
    :cond_8
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_17

    .line 1356
    :pswitch_0
    if-lez v0, :cond_13

    .line 1357
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveto CREATED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_9
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    if-eqz v1, :cond_c

    .line 1359
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    iget-object v2, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v2, v2, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    .line 1360
    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1359
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1361
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    .line 1363
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    const-string v2, "android:target_state"

    invoke-virtual {v7, v1, v2}, Landroid/support/v4/app/v;->b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    .line 1365
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_a

    .line 1366
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    const-string v2, "android:target_req_state"

    invoke-virtual {v1, v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v8, Landroid/support/v4/app/Fragment;->dh:I

    .line 1369
    :cond_a
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dc:Ljava/lang/Boolean;

    if-eqz v1, :cond_b

    .line 1370
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dc:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v8, Landroid/support/v4/app/Fragment;->dG:Z

    .line 1371
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dc:Ljava/lang/Boolean;

    goto :goto_3

    .line 1373
    :cond_b
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    const-string v2, "android:user_visible_hint"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v8, Landroid/support/v4/app/Fragment;->dG:Z

    .line 1376
    :goto_3
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dG:Z

    if-nez v1, :cond_c

    .line 1377
    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->dF:Z

    .line 1378
    if-le v0, v11, :cond_c

    .line 1379
    nop

    .line 1384
    move v0, v11

    :cond_c
    iget-object v1, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    .line 1385
    iget-object v1, v7, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iput-object v1, v8, Landroid/support/v4/app/Fragment;->dt:Landroid/support/v4/app/Fragment;

    .line 1386
    iget-object v1, v7, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_d

    iget-object v1, v7, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    goto :goto_4

    :cond_d
    iget-object v1, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    .line 1387
    iget-object v1, v1, Landroid/support/v4/app/t;->dp:Landroid/support/v4/app/v;

    :goto_4
    iput-object v1, v8, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 1391
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_f

    .line 1392
    iget-object v1, v7, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    iget v2, v2, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    if-ne v1, v2, :cond_e

    .line 1397
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    if-gtz v1, :cond_f

    .line 1398
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_5

    .line 1393
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declared target fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " that does not belong to this FragmentManager!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1402
    :cond_f
    :goto_5
    iget-object v1, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .line 1403
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1404
    iget-object v1, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 1405
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_12

    .line 1409
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dt:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_10

    .line 1410
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dt:Landroid/support/v4/app/Fragment;

    .line 1414
    :cond_10
    iget-object v1, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .line 1416
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dL:Z

    if-nez v1, :cond_11

    .line 1417
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 1418
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V

    .line 1419
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v1}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    goto :goto_6

    .line 1421
    :cond_11
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v8, v1}, Landroid/support/v4/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 1422
    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1424
    :goto_6
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dA:Z

    goto :goto_7

    .line 1406
    :cond_12
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onAttach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1431
    :cond_13
    :goto_7
    :pswitch_1
    move v1, v0

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->dk:Z

    const/16 v2, 0x8

    if-eqz v0, :cond_16

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->dn:Z

    if-nez v0, :cond_16

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->M()Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_15

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v15}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->dx:Z

    if-eqz v0, :cond_14

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_14
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v3}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_8

    :cond_15
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    .line 1433
    :cond_16
    :goto_8
    if-le v1, v9, :cond_24

    .line 1434
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_17

    const-string v0, "FragmentManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_17
    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->dk:Z

    if-nez v0, :cond_20

    .line 1436
    nop

    .line 1437
    iget v0, v8, Landroid/support/v4/app/Fragment;->dv:I

    if-eqz v0, :cond_1a

    .line 1438
    iget v0, v8, Landroid/support/v4/app/Fragment;->dv:I

    if-ne v0, v12, :cond_18

    .line 1439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cannot create fragment "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " for a container view with no id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v0}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    .line 1444
    :cond_18
    iget-object v0, v7, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    iget v3, v8, Landroid/support/v4/app/Fragment;->dv:I

    invoke-virtual {v0, v3}, Landroid/support/v4/app/r;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 1445
    if-nez v3, :cond_1b

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->dm:Z

    if-nez v0, :cond_1b

    .line 1448
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v4, v8, Landroid/support/v4/app/Fragment;->dv:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1451
    goto :goto_9

    .line 1448
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Fragment "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not attached to a context."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1449
    :catch_0
    move-exception v0

    .line 1450
    const-string v0, "unknown"

    .line 1452
    :goto_9
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No view found for id 0x"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v8, Landroid/support/v4/app/Fragment;->dv:I

    .line 1454
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for fragment "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1452
    invoke-direct {v7, v4}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    goto :goto_a

    .line 1459
    :cond_1a
    move-object v3, v14

    :cond_1b
    :goto_a
    iput-object v3, v8, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    .line 1460
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->M()Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1462
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 1463
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object v0, v8, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    .line 1464
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v15}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1465
    if-eqz v3, :cond_1c

    .line 1466
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1468
    :cond_1c
    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->dx:Z

    if-eqz v0, :cond_1d

    .line 1469
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1471
    :cond_1d
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    .line 1472
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0, v2}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 1476
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    move v0, v9

    goto :goto_b

    :cond_1e
    move v0, v15

    :goto_b
    iput-boolean v0, v8, Landroid/support/v4/app/Fragment;->dI:Z

    goto :goto_c

    .line 1479
    :cond_1f
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    .line 1483
    :cond_20
    :goto_c
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    .line 1484
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v7, v8, v0}, Landroid/support/v4/app/v;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 1485
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_23

    .line 1486
    iget-object v0, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    if-eqz v0, :cond_21

    iget-object v0, v8, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    :cond_21
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v0, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_22

    goto :goto_d

    :cond_22
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1488
    :cond_23
    :goto_d
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    .line 1492
    :cond_24
    move v0, v1

    :pswitch_2
    if-le v0, v13, :cond_25

    .line 1493
    iput v11, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1497
    :cond_25
    :pswitch_3
    if-le v0, v11, :cond_27

    .line 1498
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_26

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveto STARTED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    :cond_26
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->N()V

    .line 1500
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->o(Landroid/support/v4/app/Fragment;)V

    .line 1504
    :cond_27
    :pswitch_4
    if-le v0, v10, :cond_4b

    .line 1505
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_28

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "moveto RESUMED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->O()V

    .line 1507
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->p(Landroid/support/v4/app/Fragment;)V

    .line 1508
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    .line 1509
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    goto/16 :goto_17

    .line 1512
    :cond_29
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-le v1, v0, :cond_4b

    .line 1513
    iget v1, v8, Landroid/support/v4/app/Fragment;->mState:I

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_17

    .line 1515
    :pswitch_5
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2d

    .line 1516
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_2a

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom RESUMED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_2a
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->M:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v1, :cond_2b

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1, v10}, Landroid/support/v4/app/v;->m(I)V

    :cond_2b
    iput v10, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iput-boolean v9, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_2c

    .line 1518
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->q(Landroid/support/v4/app/Fragment;)V

    goto :goto_e

    .line 1517
    :cond_2c
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1522
    :cond_2d
    :goto_e
    :pswitch_6
    if-ge v0, v10, :cond_31

    .line 1523
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_2e

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom STARTED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_2e
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->N:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v1, :cond_2f

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->dispatchStop()V

    :cond_2f
    iput v11, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onStop()V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_30

    .line 1525
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->r(Landroid/support/v4/app/Fragment;)V

    goto :goto_f

    .line 1524
    :cond_30
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onStop()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1529
    :cond_31
    :goto_f
    :pswitch_7
    if-ge v0, v11, :cond_34

    .line 1530
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_32

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom STOPPED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    :cond_32
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v1, :cond_33

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1, v13}, Landroid/support/v4/app/v;->m(I)V

    :cond_33
    iput v13, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1535
    :cond_34
    :pswitch_8
    if-ge v0, v13, :cond_3d

    .line 1536
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_35

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    :cond_35
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_36

    .line 1540
    iget-object v1, v7, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    invoke-virtual {v1}, Landroid/support/v4/app/t;->ae()Z

    move-result v1

    if-eqz v1, :cond_36

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    if-nez v1, :cond_36

    .line 1541
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->m(Landroid/support/v4/app/Fragment;)V

    .line 1544
    :cond_36
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v1, :cond_37

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1, v9}, Landroid/support/v4/app/v;->m(I)V

    :cond_37
    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_3c

    invoke-static/range {p1 .. p1}, Landroid/support/v4/app/ag;->c(Landroid/arch/lifecycle/k;)Landroid/support/v4/app/ag;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->at()V

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dn:Z

    .line 1545
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->s(Landroid/support/v4/app/Fragment;)V

    .line 1546
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_3b

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    if-eqz v1, :cond_3b

    .line 1548
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1549
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1550
    nop

    .line 1551
    iget v1, v7, Landroid/support/v4/app/v;->eG:I

    const/4 v2, 0x0

    if-lez v1, :cond_38

    iget-boolean v1, v7, Landroid/support/v4/app/v;->mDestroyed:Z

    if-nez v1, :cond_38

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1552
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_38

    iget v1, v8, Landroid/support/v4/app/Fragment;->dK:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_38

    .line 1554
    move/from16 v1, p3

    move/from16 v3, p4

    invoke-virtual {v7, v8, v1, v15, v3}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/E;

    move-result-object v1

    goto :goto_10

    .line 1557
    :cond_38
    move-object v1, v14

    :goto_10
    iput v2, v8, Landroid/support/v4/app/Fragment;->dK:F

    .line 1558
    if-eqz v1, :cond_3a

    .line 1559
    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v3, v8, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->j(I)V

    iget-object v4, v1, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    if-eqz v4, :cond_39

    new-instance v4, Landroid/support/v4/app/G;

    iget-object v5, v1, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    invoke-direct {v4, v5, v3, v2}, Landroid/support/v4/app/G;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    iget-object v5, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    invoke-static {v4}, Landroid/support/v4/app/v;->a(Landroid/view/animation/Animation;)Landroid/view/animation/Animation$AnimationListener;

    move-result-object v5

    new-instance v6, Landroid/support/v4/app/x;

    invoke-direct {v6, v7, v5, v3, v8}, Landroid/support/v4/app/x;-><init>(Landroid/support/v4/app/v;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-static {v2, v1}, Landroid/support/v4/app/v;->a(Landroid/view/View;Landroid/support/v4/app/E;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_11

    :cond_39
    iget-object v4, v1, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    iget-object v5, v1, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    invoke-virtual {v8, v5}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    new-instance v5, Landroid/support/v4/app/z;

    invoke-direct {v5, v7, v3, v2, v8}, Landroid/support/v4/app/z;-><init>(Landroid/support/v4/app/v;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v2, v1}, Landroid/support/v4/app/v;->a(Landroid/view/View;Landroid/support/v4/app/E;)V

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 1561
    :cond_3a
    :goto_11
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    iget-object v2, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1563
    :cond_3b
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    .line 1564
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1565
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    .line 1566
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dl:Z

    goto :goto_12

    .line 1544
    :cond_3c
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroyView()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_3d
    :goto_12
    :pswitch_9
    if-gtz v0, :cond_4b

    .line 1571
    iget-boolean v1, v7, Landroid/support/v4/app/v;->mDestroyed:Z

    if-eqz v1, :cond_3f

    .line 1578
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 1579
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v1

    .line 1580
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    .line 1581
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1582
    goto :goto_13

    :cond_3e
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_3f

    .line 1583
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object v1

    .line 1584
    invoke-virtual {v8, v14}, Landroid/support/v4/app/Fragment;->a(Landroid/animation/Animator;)V

    .line 1585
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 1588
    :cond_3f
    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_4a

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_40

    goto/16 :goto_16

    .line 1596
    :cond_40
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_41

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "movefrom CREATED: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    :cond_41
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dA:Z

    if-nez v1, :cond_44

    .line 1598
    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dM:Landroid/arch/lifecycle/l;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->O:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v1, v2}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$Event;)V

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v1, :cond_42

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->dispatchDestroy()V

    :cond_42
    iput v15, v8, Landroid/support/v4/app/Fragment;->mState:I

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dL:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onDestroy()V

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_43

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    .line 1599
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->t(Landroid/support/v4/app/Fragment;)V

    goto :goto_14

    .line 1598
    :cond_43
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDestroy()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1601
    :cond_44
    iput v15, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1604
    :goto_14
    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/app/Fragment;->onDetach()V

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-eqz v1, :cond_49

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v1, :cond_46

    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dA:Z

    if-eqz v1, :cond_45

    iget-object v1, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->dispatchDestroy()V

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    goto :goto_15

    :cond_45
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Child FragmentManager of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " was not  destroyed and this fragment is not retaining instance"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1605
    :cond_46
    :goto_15
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/app/v;->u(Landroid/support/v4/app/Fragment;)V

    .line 1606
    if-nez p5, :cond_4b

    .line 1607
    iget-boolean v1, v8, Landroid/support/v4/app/Fragment;->dA:Z

    if-nez v1, :cond_48

    .line 1608
    iget v1, v8, Landroid/support/v4/app/Fragment;->cx:I

    if-ltz v1, :cond_4b

    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_47

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Freeing fragment index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    iget-object v1, v7, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget v2, v8, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v1, v2, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput v12, v8, Landroid/support/v4/app/Fragment;->cx:I

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dd:Ljava/lang/String;

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->di:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dj:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dk:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dl:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dm:Z

    iput v15, v8, Landroid/support/v4/app/Fragment;->do:I

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    iput v15, v8, Landroid/support/v4/app/Fragment;->du:I

    iput v15, v8, Landroid/support/v4/app/Fragment;->dv:I

    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dx:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dy:Z

    iput-boolean v15, v8, Landroid/support/v4/app/Fragment;->dA:Z

    goto :goto_17

    .line 1610
    :cond_48
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    .line 1611
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dt:Landroid/support/v4/app/Fragment;

    .line 1612
    iput-object v14, v8, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    goto :goto_17

    .line 1604
    :cond_49
    new-instance v0, Landroid/support/v4/app/SuperNotCalledException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " did not call through to super.onDetach()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1593
    :cond_4a
    :goto_16
    invoke-virtual {v8, v0}, Landroid/support/v4/app/Fragment;->j(I)V

    .line 1594
    goto :goto_18

    .line 1620
    :cond_4b
    :goto_17
    move v9, v0

    :goto_18
    iget v0, v8, Landroid/support/v4/app/Fragment;->mState:I

    if-eq v0, v9, :cond_4c

    .line 1621
    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "moveToState: Fragment state for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not updated inline; expected state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    iput v9, v8, Landroid/support/v4/app/Fragment;->mState:I

    .line 1625
    :cond_4c
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method final a(Landroid/support/v4/app/Fragment;Landroid/content/Context;)V
    .locals 2

    .line 3448
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3449
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3450
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3451
    check-cast v0, Landroid/support/v4/app/v;

    .line 3452
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .line 3455
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3456
    goto :goto_0

    .line 3460
    :cond_1
    return-void
.end method

.method final a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    .line 3480
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3481
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3482
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3483
    check-cast v0, Landroid/support/v4/app/v;

    .line 3484
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3487
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3488
    goto :goto_0

    .line 3492
    :cond_1
    return-void
.end method

.method final a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 3528
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3529
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3530
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3531
    check-cast v0, Landroid/support/v4/app/v;

    .line 3532
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .line 3535
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3536
    goto :goto_0

    .line 3540
    :cond_1
    return-void
.end method

.method public final a(Landroid/support/v4/app/Fragment;Z)V
    .locals 3

    .line 1919
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v4/app/v;->g(Landroid/support/v4/app/Fragment;)V

    .line 1921
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dy:Z

    if-nez v0, :cond_4

    .line 1922
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1925
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1926
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1928
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->di:Z

    .line 1929
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->dj:Z

    .line 1930
    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1931
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->dJ:Z

    .line 1933
    :cond_1
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dC:Z

    if-eqz v1, :cond_2

    .line 1934
    iput-boolean v0, p0, Landroid/support/v4/app/v;->eL:Z

    .line 1936
    :cond_2
    if-eqz p2, :cond_4

    .line 1937
    invoke-virtual {p0, p1}, Landroid/support/v4/app/v;->e(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 1927
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1923
    :cond_3
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment already added: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1940
    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Landroid/support/v4/app/I;Z)V
    .locals 1

    .line 2112
    if-nez p2, :cond_0

    .line 2113
    invoke-direct {p0}, Landroid/support/v4/app/v;->ai()V

    .line 2115
    :cond_0
    monitor-enter p0

    .line 2116
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/app/v;->mDestroyed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    if-nez v0, :cond_1

    goto :goto_0

    .line 2123
    :cond_1
    iget-object p2, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    if-nez p2, :cond_2

    .line 2124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    .line 2126
    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2127
    invoke-direct {p0}, Landroid/support/v4/app/v;->aj()V

    .line 2128
    monitor-exit p0

    return-void

    .line 2117
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 2119
    monitor-exit p0

    return-void

    .line 2121
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2128
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/support/v4/app/t;Landroid/support/v4/app/r;Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 3206
    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    if-nez v0, :cond_0

    .line 3207
    iput-object p1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    .line 3208
    iput-object p2, p0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    .line 3209
    iput-object p3, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    .line 3210
    return-void

    .line 3206
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5

    .line 2753
    iget-object v0, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2754
    return v1

    .line 2756
    :cond_0
    const/4 v0, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v2, p5, 0x1

    if-nez v2, :cond_2

    .line 2757
    iget-object p3, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    .line 2758
    if-gez p3, :cond_1

    .line 2759
    return v1

    .line 2761
    :cond_1
    iget-object p4, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2762
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2763
    goto/16 :goto_5

    .line 2764
    :cond_2
    nop

    .line 2765
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    .line 2796
    :cond_3
    const/4 p3, -0x1

    move v2, p3

    goto :goto_3

    .line 2768
    :cond_4
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .line 2769
    :goto_1
    if-ltz v2, :cond_7

    .line 2770
    iget-object v3, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/c;

    .line 2771
    if-eqz p3, :cond_5

    iget-object v4, v3, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 2772
    :cond_5
    if-ltz p4, :cond_6

    iget v3, v3, Landroid/support/v4/app/c;->cx:I

    if-eq p4, v3, :cond_7

    .line 2775
    :cond_6
    add-int/lit8 v2, v2, -0x1

    .line 2778
    goto :goto_1

    .line 2779
    :cond_7
    if-gez v2, :cond_8

    .line 2780
    return v1

    .line 2782
    :cond_8
    and-int/2addr p5, v0

    if-eqz p5, :cond_b

    .line 2783
    add-int/lit8 v2, v2, -0x1

    .line 2785
    :goto_2
    if-ltz v2, :cond_b

    .line 2786
    iget-object p5, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/support/v4/app/c;

    .line 2787
    if-eqz p3, :cond_9

    iget-object v3, p5, Landroid/support/v4/app/c;->mName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    if-ltz p4, :cond_b

    iget p5, p5, Landroid/support/v4/app/c;->cx:I

    if-ne p4, p5, :cond_b

    .line 2789
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 2790
    goto :goto_2

    .line 2796
    :cond_b
    :goto_3
    iget-object p3, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    if-ne v2, p3, :cond_c

    .line 2797
    return v1

    .line 2799
    :cond_c
    iget-object p3, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v0

    :goto_4
    if-le p3, v2, :cond_d

    .line 2800
    iget-object p4, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2801
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2799
    add-int/lit8 p3, p3, -0x1

    goto :goto_4

    .line 2804
    :cond_d
    :goto_5
    return v0
.end method

.method public final ag()Landroid/support/v4/app/Q;
    .locals 1

    .line 809
    new-instance v0, Landroid/support/v4/app/c;

    invoke-direct {v0, p0}, Landroid/support/v4/app/c;-><init>(Landroid/support/v4/app/v;)V

    return-object v0
.end method

.method final ah()V
    .locals 9

    .line 1882
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    return-void

    .line 1884
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1885
    iget-object v2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1886
    if-eqz v4, :cond_2

    .line 1887
    iget-boolean v2, v4, Landroid/support/v4/app/Fragment;->dF:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/support/v4/app/v;->ew:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/v;->eO:Z

    goto :goto_1

    :cond_1
    iput-boolean v0, v4, Landroid/support/v4/app/Fragment;->dF:Z

    iget v5, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1884
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1890
    :cond_3
    return-void
.end method

.method final am()V
    .locals 1

    .line 2729
    iget-boolean v0, p0, Landroid/support/v4/app/v;->eO:Z

    if-eqz v0, :cond_0

    .line 2730
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/v;->eO:Z

    .line 2731
    invoke-virtual {p0}, Landroid/support/v4/app/v;->ah()V

    .line 2733
    :cond_0
    return-void
.end method

.method final an()V
    .locals 2

    .line 2736
    iget-object v0, p0, Landroid/support/v4/app/v;->eE:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2737
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/v;->eE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2738
    iget-object v1, p0, Landroid/support/v4/app/v;->eE:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 2737
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2741
    :cond_0
    return-void
.end method

.method final ao()V
    .locals 10

    .line 2837
    nop

    .line 2838
    nop

    .line 2839
    nop

    .line 2840
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 2841
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :goto_0
    iget-object v6, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_9

    .line 2842
    iget-object v6, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    .line 2843
    if-eqz v6, :cond_7

    .line 2844
    iget-boolean v7, v6, Landroid/support/v4/app/Fragment;->dz:Z

    if-eqz v7, :cond_2

    .line 2845
    if-nez v3, :cond_0

    .line 2846
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2848
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2849
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    if-eqz v7, :cond_1

    iget-object v7, v6, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    iget v7, v7, Landroid/support/v4/app/Fragment;->cx:I

    goto :goto_1

    :cond_1
    const/4 v7, -0x1

    :goto_1
    iput v7, v6, Landroid/support/v4/app/Fragment;->dg:I

    .line 2850
    sget-boolean v7, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "retainNonConfig: keeping retained "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :cond_2
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v7, :cond_3

    .line 2854
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v7}, Landroid/support/v4/app/v;->ao()V

    .line 2855
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    iget-object v7, v7, Landroid/support/v4/app/v;->eV:Landroid/support/v4/app/L;

    goto :goto_2

    .line 2859
    :cond_3
    iget-object v7, v6, Landroid/support/v4/app/Fragment;->ds:Landroid/support/v4/app/L;

    .line 2862
    :goto_2
    if-nez v4, :cond_4

    if-eqz v7, :cond_4

    .line 2863
    new-instance v4, Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 2864
    move v8, v0

    :goto_3
    if-ge v8, v2, :cond_4

    .line 2865
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2864
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2869
    :cond_4
    if-eqz v4, :cond_5

    .line 2870
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2872
    :cond_5
    if-nez v5, :cond_6

    iget-object v7, v6, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    if-eqz v7, :cond_6

    .line 2873
    new-instance v5, Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2874
    move v7, v0

    :goto_4
    if-ge v7, v2, :cond_6

    .line 2875
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2874
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 2879
    :cond_6
    if-eqz v5, :cond_7

    .line 2880
    iget-object v6, v6, Landroid/support/v4/app/Fragment;->az:Landroid/arch/lifecycle/E;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2841
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2885
    :cond_8
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    :cond_9
    if-nez v3, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    .line 2886
    iput-object v1, p0, Landroid/support/v4/app/v;->eV:Landroid/support/v4/app/L;

    return-void

    .line 2888
    :cond_a
    new-instance v0, Landroid/support/v4/app/L;

    invoke-direct {v0, v3, v4, v5}, Landroid/support/v4/app/L;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    iput-object v0, p0, Landroid/support/v4/app/v;->eV:Landroid/support/v4/app/L;

    .line 2891
    return-void
.end method

.method public final b(Landroid/os/Bundle;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .line 932
    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 933
    if-ne p1, v0, :cond_0

    .line 934
    const/4 p1, 0x0

    return-object p1

    .line 936
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 937
    if-nez v0, :cond_1

    .line 938
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": index "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    .line 941
    :cond_1
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 2052
    if-eqz p1, :cond_1

    .line 2054
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2055
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2056
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2057
    return-object v1

    .line 2054
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2061
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 2063
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2064
    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2065
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2066
    return-object v1

    .line 2063
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2070
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method final b(IZ)V
    .locals 3

    .line 1843
    iget-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1844
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1847
    :cond_1
    :goto_0
    if-nez p2, :cond_2

    iget p2, p0, Landroid/support/v4/app/v;->eG:I

    if-ne p1, p2, :cond_2

    .line 1848
    return-void

    .line 1851
    :cond_2
    iput p1, p0, Landroid/support/v4/app/v;->eG:I

    .line 1853
    iget-object p1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    .line 1856
    iget-object p1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1857
    const/4 p2, 0x0

    move v0, p2

    :goto_1
    if-ge v0, p1, :cond_3

    .line 1858
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1859
    invoke-virtual {p0, v1}, Landroid/support/v4/app/v;->f(Landroid/support/v4/app/Fragment;)V

    .line 1857
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1864
    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 1865
    move v0, p2

    :goto_2
    if-ge v0, p1, :cond_6

    .line 1866
    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1867
    if-eqz v1, :cond_5

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->dj:Z

    if-nez v2, :cond_4

    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->dy:Z

    if-eqz v2, :cond_5

    :cond_4
    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->dI:Z

    if-nez v2, :cond_5

    .line 1868
    invoke-virtual {p0, v1}, Landroid/support/v4/app/v;->f(Landroid/support/v4/app/Fragment;)V

    .line 1865
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1872
    :cond_6
    invoke-virtual {p0}, Landroid/support/v4/app/v;->ah()V

    .line 1874
    iget-boolean p1, p0, Landroid/support/v4/app/v;->eL:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    if-eqz p1, :cond_7

    iget p1, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    .line 1875
    iget-object p1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    invoke-virtual {p1}, Landroid/support/v4/app/t;->af()V

    .line 1876
    iput-boolean p2, p0, Landroid/support/v4/app/v;->eL:Z

    .line 1879
    :cond_7
    return-void
.end method

.method final b(Landroid/support/v4/app/Fragment;Landroid/content/Context;)V
    .locals 2

    .line 3464
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3465
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3466
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3467
    check-cast v0, Landroid/support/v4/app/v;

    .line 3468
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .line 3471
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3472
    goto :goto_0

    .line 3476
    :cond_1
    return-void
.end method

.method final b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    .line 3496
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3497
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3498
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3499
    check-cast v0, Landroid/support/v4/app/v;

    .line 3500
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/v;->b(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3503
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3504
    goto :goto_0

    .line 3508
    :cond_1
    return-void
.end method

.method final c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    .line 3512
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3513
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3514
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3515
    check-cast v0, Landroid/support/v4/app/v;

    .line 3516
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/v;->c(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3519
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3520
    goto :goto_0

    .line 3524
    :cond_1
    return-void
.end method

.method final d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V
    .locals 2

    .line 3604
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3605
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3606
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3607
    check-cast v0, Landroid/support/v4/app/v;

    .line 3608
    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/v;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .line 3611
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3612
    goto :goto_0

    .line 3616
    :cond_1
    return-void
.end method

.method public final dispatchActivityCreated()V
    .locals 1

    .line 3232
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/v;->eM:Z

    .line 3233
    iput-boolean v0, p0, Landroid/support/v4/app/v;->mStopped:Z

    .line 3234
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/app/v;->m(I)V

    .line 3235
    return-void
.end method

.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 3304
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3305
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3306
    if-eqz v1, :cond_0

    .line 3307
    invoke-virtual {v1, p1}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/v;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3304
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3310
    :cond_1
    return-void
.end method

.method public final dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 3386
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3387
    return v1

    .line 3389
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 3390
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3391
    if-eqz v2, :cond_2

    .line 3392
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->dx:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    iget-object v3, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v3, :cond_1

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/v;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v2, :cond_2

    .line 3393
    return v4

    .line 3389
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3397
    :cond_3
    return v1
.end method

.method public final dispatchCreate()V
    .locals 1

    .line 3226
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/v;->eM:Z

    .line 3227
    iput-boolean v0, p0, Landroid/support/v4/app/v;->mStopped:Z

    .line 3228
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/app/v;->m(I)V

    .line 3229
    return-void
.end method

.method public final dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .line 3322
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3323
    return v1

    .line 3325
    :cond_0
    nop

    .line 3326
    const/4 v0, 0x0

    .line 3327
    move-object v2, v0

    move v0, v1

    move v3, v0

    :goto_0
    iget-object v4, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 3328
    iget-object v4, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 3329
    const/4 v5, 0x1

    if-eqz v4, :cond_5

    .line 3330
    iget-boolean v6, v4, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez v6, :cond_2

    iget-boolean v6, v4, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v6, :cond_1

    iget-boolean v6, v4, Landroid/support/v4/app/Fragment;->dC:Z

    if-eqz v6, :cond_1

    move v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    iget-object v7, v4, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v7, :cond_3

    iget-object v7, v4, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v7, p1, p2}, Landroid/support/v4/app/v;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v7

    or-int/2addr v6, v7

    goto :goto_2

    :cond_2
    move v6, v1

    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    .line 3331
    nop

    .line 3332
    if-nez v2, :cond_4

    .line 3333
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3335
    :cond_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3327
    move v3, v5

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3340
    :cond_6
    iget-object p1, p0, Landroid/support/v4/app/v;->eB:Ljava/util/ArrayList;

    if-eqz p1, :cond_8

    .line 3341
    :goto_3
    iget-object p1, p0, Landroid/support/v4/app/v;->eB:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_8

    .line 3342
    iget-object p1, p0, Landroid/support/v4/app/v;->eB:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    .line 3343
    if-eqz v2, :cond_7

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 3344
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3349
    :cond_8
    iput-object v2, p0, Landroid/support/v4/app/v;->eB:Ljava/util/ArrayList;

    .line 3351
    return v3
.end method

.method public final dispatchDestroy()V
    .locals 1

    .line 3267
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/v;->mDestroyed:Z

    .line 3268
    invoke-virtual {p0}, Landroid/support/v4/app/v;->execPendingActions()Z

    .line 3269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/v;->m(I)V

    .line 3270
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    .line 3271
    iput-object v0, p0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    .line 3272
    iput-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    .line 3273
    return-void
.end method

.method public final dispatchLowMemory()V
    .locals 3

    .line 3313
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3314
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3315
    if-eqz v1, :cond_0

    .line 3316
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1}, Landroid/support/v4/app/v;->dispatchLowMemory()V

    .line 3313
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3319
    :cond_1
    return-void
.end method

.method public final dispatchMultiWindowModeChanged(Z)V
    .locals 3

    .line 3286
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3287
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3288
    if-eqz v1, :cond_0

    .line 3289
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/v;->dispatchMultiWindowModeChanged(Z)V

    .line 3286
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3292
    :cond_1
    return-void
.end method

.method public final dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 3371
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3372
    return v1

    .line 3374
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 3375
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3376
    if-eqz v2, :cond_3

    .line 3377
    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->dx:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroid/support/v4/app/Fragment;->dC:Z

    :cond_1
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v3, :cond_2

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v2, p1}, Landroid/support/v4/app/v;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    if-eqz v2, :cond_3

    .line 3378
    return v4

    .line 3374
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3382
    :cond_4
    return v1
.end method

.method public final dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3

    .line 3401
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    if-gtz v0, :cond_0

    .line 3402
    return-void

    .line 3404
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3405
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3406
    if-eqz v1, :cond_1

    .line 3407
    iget-boolean v2, v1, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v2, :cond_1

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/v;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 3404
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3410
    :cond_2
    return-void
.end method

.method public final dispatchPictureInPictureModeChanged(Z)V
    .locals 3

    .line 3295
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 3296
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 3297
    if-eqz v1, :cond_0

    .line 3298
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v1, p1}, Landroid/support/v4/app/v;->dispatchPictureInPictureModeChanged(Z)V

    .line 3295
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3301
    :cond_1
    return-void
.end method

.method public final dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7

    .line 3355
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 3356
    return v1

    .line 3358
    :cond_0
    nop

    .line 3359
    move v0, v1

    move v2, v0

    :goto_0
    iget-object v3, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 3360
    iget-object v3, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/Fragment;

    .line 3361
    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 3362
    iget-boolean v5, v3, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez v5, :cond_3

    iget-boolean v5, v3, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v3, Landroid/support/v4/app/Fragment;->dC:Z

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    iget-object v6, v3, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v6, :cond_2

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v3, p1}, Landroid/support/v4/app/v;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v3

    or-int/2addr v3, v5

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 3363
    nop

    .line 3359
    move v2, v4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3367
    :cond_5
    return v2
.end method

.method public final dispatchResume()V
    .locals 1

    .line 3244
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/v;->eM:Z

    .line 3245
    iput-boolean v0, p0, Landroid/support/v4/app/v;->mStopped:Z

    .line 3246
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/support/v4/app/v;->m(I)V

    .line 3247
    return-void
.end method

.method public final dispatchStart()V
    .locals 1

    .line 3238
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/v;->eM:Z

    .line 3239
    iput-boolean v0, p0, Landroid/support/v4/app/v;->mStopped:Z

    .line 3240
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/support/v4/app/v;->m(I)V

    .line 3241
    return-void
.end method

.method public final dispatchStop()V
    .locals 1

    .line 3254
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/v;->mStopped:Z

    .line 3255
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/support/v4/app/v;->m(I)V

    .line 3256
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1023
    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1025
    if-lez v1, :cond_1

    .line 1026
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1027
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1028
    const-string v3, ":"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1030
    iget-object v4, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/Fragment;

    .line 1031
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 1032
    const-string v5, ": "

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1033
    if-eqz v4, :cond_0

    .line 1034
    invoke-virtual {v4, v0, p2, p3, p4}, Landroid/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1029
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1040
    :cond_1
    iget-object p2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1041
    if-lez p2, :cond_2

    .line 1042
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Added Fragments:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    move p4, v2

    :goto_1
    if-ge p4, p2, :cond_2

    .line 1044
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1045
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1046
    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1048
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 1053
    :cond_2
    iget-object p2, p0, Landroid/support/v4/app/v;->eB:Ljava/util/ArrayList;

    if-eqz p2, :cond_3

    .line 1054
    iget-object p2, p0, Landroid/support/v4/app/v;->eB:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1055
    if-lez p2, :cond_3

    .line 1056
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Fragments Created Menus:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    move p4, v2

    :goto_2
    if-ge p4, p2, :cond_3

    .line 1058
    iget-object v1, p0, Landroid/support/v4/app/v;->eB:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 1059
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1060
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 1065
    :cond_3
    iget-object p2, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    .line 1066
    iget-object p2, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1067
    if-lez p2, :cond_4

    .line 1068
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1069
    move p4, v2

    :goto_3
    if-ge p4, p2, :cond_4

    .line 1070
    iget-object v1, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/c;

    .line 1071
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1072
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/c;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    invoke-virtual {v1, v0, p3}, Landroid/support/v4/app/c;->dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 1069
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 1078
    :cond_4
    monitor-enter p0

    .line 1079
    :try_start_0
    iget-object p2, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 1080
    iget-object p2, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1081
    if-lez p2, :cond_5

    .line 1082
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    move p4, v2

    :goto_4
    if-ge p4, p2, :cond_5

    .line 1084
    iget-object v0, p0, Landroid/support/v4/app/v;->eC:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/c;

    .line 1085
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    .line 1086
    const-string v1, ": "

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1083
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 1091
    :cond_5
    iget-object p2, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 1092
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object p2, p0, Landroid/support/v4/app/v;->eD:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1097
    iget-object p2, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 1098
    iget-object p2, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1099
    if-lez p2, :cond_7

    .line 1100
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    :goto_5
    if-ge v2, p2, :cond_7

    .line 1102
    iget-object p4, p0, Landroid/support/v4/app/v;->ev:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/support/v4/app/I;

    .line 1103
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1104
    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1101
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1109
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1111
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1112
    iget-object p2, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz p2, :cond_8

    .line 1113
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1115
    :cond_8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Landroid/support/v4/app/v;->eG:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 1116
    const-string p2, " mStateSaved="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/v;->eM:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1117
    const-string p2, " mStopped="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/v;->mStopped:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1118
    const-string p2, " mDestroyed="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/support/v4/app/v;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1119
    iget-boolean p2, p0, Landroid/support/v4/app/v;->eL:Z

    if-eqz p2, :cond_9

    .line 1120
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1121
    iget-boolean p2, p0, Landroid/support/v4/app/v;->eL:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1123
    :cond_9
    iget-object p2, p0, Landroid/support/v4/app/v;->eN:Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 1124
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNoTransactionsBecause="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1125
    iget-object p1, p0, Landroid/support/v4/app/v;->eN:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1127
    :cond_a
    return-void

    .line 1095
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final e(Landroid/support/v4/app/Fragment;)V
    .locals 6

    .line 1691
    iget v2, p0, Landroid/support/v4/app/v;->eG:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1692
    return-void
.end method

.method public final execPendingActions()Z
    .locals 4

    .line 2273
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v4/app/v;->f(Z)V

    .line 2275
    nop

    .line 2276
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/v;->eP:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/v;->eQ:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Landroid/support/v4/app/v;->d(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2277
    iput-boolean v0, p0, Landroid/support/v4/app/v;->ew:Z

    .line 2279
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/v;->eP:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/v;->eQ:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Landroid/support/v4/app/v;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2281
    invoke-direct {p0}, Landroid/support/v4/app/v;->ak()V

    .line 2282
    nop

    .line 2283
    nop

    .line 2276
    move v1, v0

    goto :goto_0

    .line 2281
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Landroid/support/v4/app/v;->ak()V

    throw v0

    .line 2286
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/v;->am()V

    .line 2287
    invoke-direct {p0}, Landroid/support/v4/app/v;->ap()V

    .line 2289
    return v1
.end method

.method public final executePendingTransactions()Z
    .locals 1

    .line 814
    invoke-virtual {p0}, Landroid/support/v4/app/v;->execPendingActions()Z

    move-result v0

    .line 815
    invoke-direct {p0}, Landroid/support/v4/app/v;->al()V

    .line 816
    return v0
.end method

.method final f(Landroid/support/v4/app/Fragment;)V
    .locals 10

    .line 1780
    if-nez p1, :cond_0

    .line 1781
    return-void

    .line 1783
    :cond_0
    iget v0, p0, Landroid/support/v4/app/v;->eG:I

    .line 1784
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dj:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 1785
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1786
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 1788
    :cond_1
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1791
    :cond_2
    :goto_0
    move v6, v0

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->R()I

    move-result v7

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->S()I

    move-result v8

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    .line 1793
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 1795
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    sub-int/2addr v1, v2

    :goto_1
    if-ltz v1, :cond_5

    iget-object v5, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    if-ne v6, v0, :cond_4

    iget-object v6, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 1796
    move-object v4, v5

    goto :goto_2

    .line 1795
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1796
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 1797
    iget-object v0, v4, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1799
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    .line 1800
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1801
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1802
    if-ge v4, v0, :cond_6

    .line 1803
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1804
    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1807
    :cond_6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dI:Z

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    if-eqz v0, :cond_9

    .line 1809
    iget v0, p1, Landroid/support/v4/app/Fragment;->dK:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    .line 1810
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget v4, p1, Landroid/support/v4/app/Fragment;->dK:F

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1812
    :cond_7
    iput v1, p1, Landroid/support/v4/app/Fragment;->dK:F

    .line 1813
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->dI:Z

    .line 1815
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->R()I

    move-result v0

    .line 1816
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->S()I

    move-result v1

    .line 1815
    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/E;

    move-result-object v0

    .line 1817
    if-eqz v0, :cond_9

    .line 1818
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/v;->a(Landroid/view/View;Landroid/support/v4/app/E;)V

    .line 1819
    iget-object v1, v0, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    if-eqz v1, :cond_8

    .line 1820
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3

    .line 1822
    :cond_8
    iget-object v1, v0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1823
    iget-object v0, v0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1828
    :cond_9
    :goto_3
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dJ:Z

    if-eqz v0, :cond_11

    .line 1829
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->R()I

    move-result v0

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dx:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->S()I

    move-result v4

    invoke-virtual {p0, p1, v0, v1, v4}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IZI)Landroid/support/v4/app/E;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, v0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    if-eqz v1, :cond_c

    iget-object v1, v0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dx:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Z()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->d(Z)V

    goto :goto_4

    :cond_a
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->dD:Landroid/view/ViewGroup;

    iget-object v4, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    iget-object v5, v0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    new-instance v6, Landroid/support/v4/app/A;

    invoke-direct {v6, p0, v1, v4, p1}, Landroid/support/v4/app/A;-><init>(Landroid/support/v4/app/v;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_4

    :cond_b
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/v;->a(Landroid/view/View;Landroid/support/v4/app/E;)V

    iget-object v0, v0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_6

    :cond_c
    if-eqz v0, :cond_d

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/app/v;->a(Landroid/view/View;Landroid/support/v4/app/E;)V

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    invoke-virtual {v1, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, v0, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    :cond_d
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dx:Z

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Z()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0x8

    goto :goto_5

    :cond_e
    move v0, v3

    :goto_5
    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->Z()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p1, v3}, Landroid/support/v4/app/Fragment;->d(Z)V

    :cond_f
    :goto_6
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dC:Z

    if-eqz v0, :cond_10

    iput-boolean v2, p0, Landroid/support/v4/app/v;->eL:Z

    :cond_10
    iput-boolean v3, p1, Landroid/support/v4/app/Fragment;->dJ:Z

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->dx:Z

    .line 1831
    :cond_11
    return-void
.end method

.method final g(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1893
    iget v0, p1, Landroid/support/v4/app/Fragment;->cx:I

    if-ltz v0, :cond_0

    .line 1894
    return-void

    .line 1897
    :cond_0
    iget v0, p0, Landroid/support/v4/app/v;->ex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/support/v4/app/v;->ex:I

    iget-object v1, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/Fragment;->a(ILandroid/support/v4/app/Fragment;)V

    .line 1898
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1899
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    .line 1901
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1902
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated fragment index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    :cond_2
    return-void
.end method

.method public final getFragments()Ljava/util/List;
    .locals 2

    .line 946
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 949
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    monitor-enter v0

    .line 950
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    monitor-exit v0

    return-object v1

    .line 951
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1943
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " nesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/support/v4/app/Fragment;->do:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->B()Z

    move-result v0

    .line 1945
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p1, Landroid/support/v4/app/Fragment;->dy:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1946
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1947
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1948
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1949
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dC:Z

    if-eqz v0, :cond_2

    .line 1950
    iput-boolean v1, p0, Landroid/support/v4/app/v;->eL:Z

    .line 1952
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->di:Z

    .line 1953
    iput-boolean v1, p1, Landroid/support/v4/app/Fragment;->dj:Z

    .line 1955
    :cond_3
    return-void

    .line 1948
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final i(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1964
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dx:Z

    if-nez v0, :cond_1

    .line 1966
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->dx:Z

    .line 1969
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dJ:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->dJ:Z

    .line 1971
    :cond_1
    return-void
.end method

.method public final isStateSaved()Z
    .locals 1

    .line 2101
    iget-boolean v0, p0, Landroid/support/v4/app/v;->eM:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/app/v;->mStopped:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final j(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 1980
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "show: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dx:Z

    if-eqz v0, :cond_1

    .line 1982
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->dx:Z

    .line 1985
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dJ:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->dJ:Z

    .line 1987
    :cond_1
    return-void
.end method

.method public final k(Landroid/support/v4/app/Fragment;)V
    .locals 4

    .line 1990
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "detach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dy:Z

    if-nez v0, :cond_3

    .line 1992
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->dy:Z

    .line 1993
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->di:Z

    if-eqz v1, :cond_3

    .line 1995
    sget-boolean v1, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "FragmentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remove from detach: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1997
    :try_start_0
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1998
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dC:Z

    if-eqz v1, :cond_2

    .line 2000
    iput-boolean v0, p0, Landroid/support/v4/app/v;->eL:Z

    .line 2002
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->di:Z

    goto :goto_0

    .line 1998
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2005
    :cond_3
    :goto_0
    return-void
.end method

.method public final l(I)Landroid/support/v4/app/Fragment;
    .locals 3

    .line 2031
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2032
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2033
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/support/v4/app/Fragment;->du:I

    if-ne v2, p1, :cond_0

    .line 2034
    return-object v1

    .line 2031
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2037
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    .line 2039
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 2040
    iget-object v1, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 2041
    if-eqz v1, :cond_2

    iget v2, v1, Landroid/support/v4/app/Fragment;->du:I

    if-ne v2, p1, :cond_2

    .line 2042
    return-object v1

    .line 2039
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 2046
    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final l(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 2008
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_0
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->dy:Z

    if-eqz v0, :cond_3

    .line 2010
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->dy:Z

    .line 2011
    iget-boolean v0, p1, Landroid/support/v4/app/Fragment;->di:Z

    if-nez v0, :cond_3

    .line 2012
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2015
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add from attach: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2016
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2017
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2018
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/v4/app/Fragment;->di:Z

    .line 2020
    iget-boolean v1, p1, Landroid/support/v4/app/Fragment;->dB:Z

    if-eqz v1, :cond_3

    iget-boolean p1, p1, Landroid/support/v4/app/Fragment;->dC:Z

    if-eqz p1, :cond_3

    .line 2021
    iput-boolean v0, p0, Landroid/support/v4/app/v;->eL:Z

    goto :goto_0

    .line 2018
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 2013
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment already added: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2025
    :cond_3
    :goto_0
    return-void
.end method

.method final m(I)V
    .locals 2

    .line 3277
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/app/v;->ew:Z

    .line 3278
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/v;->b(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3280
    iput-boolean v1, p0, Landroid/support/v4/app/v;->ew:Z

    .line 3281
    nop

    .line 3282
    invoke-virtual {p0}, Landroid/support/v4/app/v;->execPendingActions()Z

    .line 3283
    return-void

    .line 3280
    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Landroid/support/v4/app/v;->ew:Z

    throw p1
.end method

.method final m(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 2894
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2895
    return-void

    .line 2897
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 2898
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    goto :goto_0

    .line 2900
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2902
    :goto_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->dE:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 2903
    iget-object v0, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2904
    iget-object v0, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    iput-object v0, p1, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    .line 2905
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/v;->eT:Landroid/util/SparseArray;

    .line 2907
    :cond_2
    return-void
.end method

.method public final n(Landroid/support/v4/app/Fragment;)V
    .locals 3

    .line 3414
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    iget v1, p1, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object v0, p1, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    if-eqz v0, :cond_1

    .line 3415
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    if-ne v0, p0, :cond_0

    goto :goto_0

    .line 3416
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3419
    :cond_1
    :goto_0
    iput-object p1, p0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    .line 3420
    return-void
.end method

.method public final noteStateNotSaved()V
    .locals 4

    .line 3213
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/v;->eV:Landroid/support/v4/app/L;

    .line 3214
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/v;->eM:Z

    .line 3215
    iput-boolean v0, p0, Landroid/support/v4/app/v;->mStopped:Z

    .line 3216
    iget-object v1, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3217
    :goto_0
    if-ge v0, v1, :cond_1

    .line 3218
    iget-object v2, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 3219
    if-eqz v2, :cond_0

    .line 3220
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->dr:Landroid/support/v4/app/v;

    invoke-virtual {v2}, Landroid/support/v4/app/v;->noteStateNotSaved()V

    .line 3217
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3223
    :cond_1
    return-void
.end method

.method final o(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 3543
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3544
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3545
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3546
    check-cast v0, Landroid/support/v4/app/v;

    .line 3547
    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->o(Landroid/support/v4/app/Fragment;)V

    .line 3550
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3551
    goto :goto_0

    .line 3555
    :cond_1
    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 13

    move-object v0, p0

    move-object/from16 v1, p3

    .line 3705
    move-object/from16 v2, p4

    const-string v3, "fragment"

    move-object v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 3706
    return-object v4

    .line 3709
    :cond_0
    const-string v3, "class"

    invoke-interface {v2, v4, v3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3710
    sget-object v5, Landroid/support/v4/app/H;->fo:[I

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 3711
    const/4 v6, 0x0

    if-nez v3, :cond_1

    .line 3712
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3714
    :cond_1
    move-object v7, v3

    const/4 v3, -0x1

    const/4 v8, 0x1

    invoke-virtual {v5, v8, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 3715
    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3716
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 3718
    iget-object v5, v0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iget-object v5, v5, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Landroid/support/v4/app/Fragment;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3721
    return-object v4

    .line 3724
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    nop

    .line 3725
    :cond_3
    if-ne v6, v3, :cond_5

    if-ne v9, v3, :cond_5

    if-eqz v10, :cond_4

    goto :goto_0

    .line 3726
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Must specify unique android:id, android:tag, or have a parent with an id for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3733
    :cond_5
    :goto_0
    if-eq v9, v3, :cond_6

    invoke-virtual {v0, v9}, Landroid/support/v4/app/v;->l(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    goto :goto_1

    .line 3734
    :cond_6
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_7

    if-eqz v10, :cond_7

    .line 3735
    invoke-virtual {v0, v10}, Landroid/support/v4/app/v;->b(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 3737
    :cond_7
    if-nez v5, :cond_8

    if-eq v6, v3, :cond_8

    .line 3738
    invoke-virtual {v0, v6}, Landroid/support/v4/app/v;->l(I)Landroid/support/v4/app/Fragment;

    move-result-object v5

    .line 3741
    :cond_8
    sget-boolean v3, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string v3, "FragmentManager"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "onCreateView: id=0x"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3742
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " fname="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " existing="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 3741
    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    :cond_9
    if-nez v5, :cond_b

    .line 3745
    iget-object v2, v0, Landroid/support/v4/app/v;->eH:Landroid/support/v4/app/r;

    invoke-virtual {v2, v1, v7, v4}, Landroid/support/v4/app/r;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 3746
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->dk:Z

    .line 3747
    if-eqz v9, :cond_a

    move v2, v9

    goto :goto_2

    :cond_a
    move v2, v6

    :goto_2
    iput v2, v1, Landroid/support/v4/app/Fragment;->du:I

    .line 3748
    iput v6, v1, Landroid/support/v4/app/Fragment;->dv:I

    .line 3749
    iput-object v10, v1, Landroid/support/v4/app/Fragment;->dw:Ljava/lang/String;

    .line 3750
    iput-boolean v8, v1, Landroid/support/v4/app/Fragment;->dl:Z

    .line 3751
    iput-object v0, v1, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3752
    iget-object v2, v0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    .line 3753
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->D()V

    .line 3754
    invoke-virtual {v0, v1, v8}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;Z)V

    .line 3780
    move-object v6, v1

    goto :goto_3

    .line 3756
    :cond_b
    iget-boolean v1, v5, Landroid/support/v4/app/Fragment;->dl:Z

    if-nez v1, :cond_11

    .line 3766
    iput-boolean v8, v5, Landroid/support/v4/app/Fragment;->dl:Z

    .line 3767
    iget-object v1, v0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    iput-object v1, v5, Landroid/support/v4/app/Fragment;->dq:Landroid/support/v4/app/t;

    .line 3771
    iget-boolean v1, v5, Landroid/support/v4/app/Fragment;->dA:Z

    if-nez v1, :cond_c

    .line 3772
    iget-object v1, v5, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->D()V

    .line 3780
    :cond_c
    move-object v6, v5

    :goto_3
    iget v1, v0, Landroid/support/v4/app/v;->eG:I

    if-gtz v1, :cond_d

    iget-boolean v1, v6, Landroid/support/v4/app/Fragment;->dk:Z

    if-eqz v1, :cond_d

    .line 3781
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_4

    .line 3783
    :cond_d
    invoke-virtual {v0, v6}, Landroid/support/v4/app/v;->e(Landroid/support/v4/app/Fragment;)V

    .line 3786
    :goto_4
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_10

    .line 3790
    if-eqz v9, :cond_e

    .line 3791
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    .line 3793
    :cond_e
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_f

    .line 3794
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3796
    :cond_f
    iget-object v0, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    return-object v0

    .line 3787
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " did not create a view."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3759
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p4 .. p4}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": Duplicate id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3760
    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", or parent id 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3761
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with another fragment for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 3801
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/support/v4/app/v;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method final p(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 3558
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3559
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3560
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3561
    check-cast v0, Landroid/support/v4/app/v;

    .line 3562
    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->p(Landroid/support/v4/app/Fragment;)V

    .line 3565
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3566
    goto :goto_0

    .line 3570
    :cond_1
    return-void
.end method

.method public final popBackStack(II)V
    .locals 2

    .line 843
    if-ltz p1, :cond_0

    .line 846
    new-instance v0, Landroid/support/v4/app/J;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Landroid/support/v4/app/J;-><init>(Landroid/support/v4/app/v;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/I;Z)V

    .line 847
    return-void

    .line 844
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bad id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final popBackStackImmediate()Z
    .locals 3

    .line 826
    invoke-direct {p0}, Landroid/support/v4/app/v;->ai()V

    .line 827
    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/app/v;->a(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method final q(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 3573
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3574
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3575
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3576
    check-cast v0, Landroid/support/v4/app/v;

    .line 3577
    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->q(Landroid/support/v4/app/Fragment;)V

    .line 3580
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3581
    goto :goto_0

    .line 3585
    :cond_1
    return-void
.end method

.method final r(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 3588
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3589
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3590
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3591
    check-cast v0, Landroid/support/v4/app/v;

    .line 3592
    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->r(Landroid/support/v4/app/Fragment;)V

    .line 3595
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3596
    goto :goto_0

    .line 3600
    :cond_1
    return-void
.end method

.method final s(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 3619
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3620
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3621
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3622
    check-cast v0, Landroid/support/v4/app/v;

    .line 3623
    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->s(Landroid/support/v4/app/Fragment;)V

    .line 3626
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3627
    goto :goto_0

    .line 3631
    :cond_1
    return-void
.end method

.method final saveAllState()Landroid/os/Parcelable;
    .locals 14

    .line 2946
    invoke-direct {p0}, Landroid/support/v4/app/v;->al()V

    .line 2947
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    move v2, v1

    :goto_1
    const/4 v3, 0x0

    if-ge v2, v0, :cond_4

    iget-object v4, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->X()I

    move-result v7

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->V()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/animation/Animation;->cancel()V

    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    :cond_1
    invoke-virtual {v6, v3}, Landroid/support/v4/app/Fragment;->b(Landroid/view/View;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Landroid/support/v4/app/v;->a(Landroid/support/v4/app/Fragment;IIIZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->W()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/Animator;->end()V

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2948
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/app/v;->execPendingActions()Z

    .line 2950
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/v;->eM:Z

    .line 2951
    iput-object v3, p0, Landroid/support/v4/app/v;->eV:Landroid/support/v4/app/L;

    .line 2953
    iget-object v2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    if-eqz v2, :cond_1f

    iget-object v2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_5

    goto/16 :goto_8

    .line 2958
    :cond_5
    iget-object v2, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2959
    new-array v4, v2, [Landroid/support/v4/app/FragmentState;

    .line 2960
    nop

    .line 2961
    move v5, v1

    move v6, v5

    :goto_3
    if-ge v5, v2, :cond_15

    .line 2962
    iget-object v7, p0, Landroid/support/v4/app/v;->ez:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/Fragment;

    .line 2963
    if-eqz v7, :cond_14

    .line 2964
    iget v6, v7, Landroid/support/v4/app/Fragment;->cx:I

    if-gez v6, :cond_6

    .line 2965
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Failure saving state: active "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " has cleared index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v6}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    .line 2970
    :cond_6
    nop

    .line 2972
    new-instance v6, Landroid/support/v4/app/FragmentState;

    invoke-direct {v6, v7}, Landroid/support/v4/app/FragmentState;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 2973
    aput-object v6, v4, v5

    .line 2975
    iget v8, v7, Landroid/support/v4/app/Fragment;->mState:I

    if-lez v8, :cond_11

    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    if-nez v8, :cond_11

    .line 2976
    iget-object v8, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    if-nez v8, :cond_7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    :cond_7
    iget-object v8, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/support/v4/app/Fragment;->e(Landroid/os/Bundle;)V

    iget-object v8, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    invoke-virtual {p0, v7, v8}, Landroid/support/v4/app/v;->d(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    iget-object v8, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    invoke-virtual {v8}, Landroid/os/Bundle;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    iput-object v3, p0, Landroid/support/v4/app/v;->eS:Landroid/os/Bundle;

    goto :goto_4

    :cond_8
    move-object v8, v3

    :goto_4
    iget-object v9, v7, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v9, :cond_9

    invoke-virtual {p0, v7}, Landroid/support/v4/app/v;->m(Landroid/support/v4/app/Fragment;)V

    :cond_9
    iget-object v9, v7, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    if-eqz v9, :cond_b

    if-nez v8, :cond_a

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_a
    const-string v9, "android:view_state"

    iget-object v10, v7, Landroid/support/v4/app/Fragment;->db:Landroid/util/SparseArray;

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_b
    iget-boolean v9, v7, Landroid/support/v4/app/Fragment;->dG:Z

    if-nez v9, :cond_d

    if-nez v8, :cond_c

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    :cond_c
    const-string v9, "android:user_visible_hint"

    iget-boolean v10, v7, Landroid/support/v4/app/Fragment;->dG:Z

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_d
    iput-object v8, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    .line 2978
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    if-eqz v8, :cond_12

    .line 2979
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    iget v8, v8, Landroid/support/v4/app/Fragment;->cx:I

    if-gez v8, :cond_e

    .line 2980
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Failure saving state: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " has target not in fragment manager: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v7, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v8}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    .line 2984
    :cond_e
    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    if-nez v8, :cond_f

    .line 2985
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iput-object v8, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    .line 2987
    :cond_f
    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    const-string v9, "android:target_state"

    iget-object v10, v7, Landroid/support/v4/app/Fragment;->df:Landroid/support/v4/app/Fragment;

    iget v11, v10, Landroid/support/v4/app/Fragment;->cx:I

    if-gez v11, :cond_10

    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Fragment "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " is not currently in the FragmentManager"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    :cond_10
    iget v10, v10, Landroid/support/v4/app/Fragment;->cx:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2989
    iget v8, v7, Landroid/support/v4/app/Fragment;->dh:I

    if-eqz v8, :cond_12

    .line 2990
    iget-object v8, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    const-string v9, "android:target_req_state"

    iget v10, v7, Landroid/support/v4/app/Fragment;->dh:I

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_5

    .line 2997
    :cond_11
    iget-object v8, v7, Landroid/support/v4/app/Fragment;->da:Landroid/os/Bundle;

    iput-object v8, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    .line 3000
    :cond_12
    :goto_5
    sget-boolean v8, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v8, :cond_13

    const-string v8, "FragmentManager"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Saved state of "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/support/v4/app/FragmentState;->da:Landroid/os/Bundle;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :cond_13
    move v6, v0

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    .line 3005
    :cond_15
    if-nez v6, :cond_17

    .line 3006
    sget-boolean v0, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v0, :cond_16

    const-string v0, "FragmentManager"

    const-string v1, "saveAllState: no fragments!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3007
    :cond_16
    return-object v3

    .line 3010
    :cond_17
    nop

    .line 3011
    nop

    .line 3014
    iget-object v0, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3015
    if-lez v0, :cond_1a

    .line 3016
    new-array v2, v0, [I

    .line 3017
    move v5, v1

    :goto_6
    if-ge v5, v0, :cond_1b

    .line 3018
    iget-object v6, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->cx:I

    aput v6, v2, v5

    .line 3019
    aget v6, v2, v5

    if-gez v6, :cond_18

    .line 3020
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failure saving state: active "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    .line 3021
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " has cleared index: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3020
    invoke-direct {p0, v6}, Landroid/support/v4/app/v;->a(Ljava/lang/RuntimeException;)V

    .line 3024
    :cond_18
    sget-boolean v6, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v6, :cond_19

    .line 3025
    const-string v6, "FragmentManager"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "saveAllState: adding fragment #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Landroid/support/v4/app/v;->ey:Ljava/util/ArrayList;

    .line 3026
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3025
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 3032
    :cond_1a
    move-object v2, v3

    :cond_1b
    iget-object v0, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    if-eqz v0, :cond_1d

    .line 3033
    iget-object v0, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3034
    if-lez v0, :cond_1d

    .line 3035
    new-array v3, v0, [Landroid/support/v4/app/BackStackState;

    .line 3036
    :goto_7
    if-ge v1, v0, :cond_1d

    .line 3037
    new-instance v5, Landroid/support/v4/app/BackStackState;

    iget-object v6, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/c;

    invoke-direct {v5, v6}, Landroid/support/v4/app/BackStackState;-><init>(Landroid/support/v4/app/c;)V

    aput-object v5, v3, v1

    .line 3038
    sget-boolean v5, Landroid/support/v4/app/v;->DEBUG:Z

    if-eqz v5, :cond_1c

    const-string v5, "FragmentManager"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "saveAllState: adding back stack #"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Landroid/support/v4/app/v;->eA:Ljava/util/ArrayList;

    .line 3039
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3038
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3036
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3044
    :cond_1d
    new-instance v0, Landroid/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerState;-><init>()V

    .line 3045
    iput-object v4, v0, Landroid/support/v4/app/FragmentManagerState;->fw:[Landroid/support/v4/app/FragmentState;

    .line 3046
    iput-object v2, v0, Landroid/support/v4/app/FragmentManagerState;->fx:[I

    .line 3047
    iput-object v3, v0, Landroid/support/v4/app/FragmentManagerState;->fy:[Landroid/support/v4/app/BackStackState;

    .line 3048
    iget-object v1, p0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_1e

    .line 3049
    iget-object v1, p0, Landroid/support/v4/app/v;->eJ:Landroid/support/v4/app/Fragment;

    iget v1, v1, Landroid/support/v4/app/Fragment;->cx:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->fz:I

    .line 3051
    :cond_1e
    iget v1, p0, Landroid/support/v4/app/v;->ex:I

    iput v1, v0, Landroid/support/v4/app/FragmentManagerState;->ex:I

    .line 3052
    invoke-virtual {p0}, Landroid/support/v4/app/v;->ao()V

    .line 3053
    return-object v0

    .line 2954
    :cond_1f
    :goto_8
    return-object v3
.end method

.method final t(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 3634
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3635
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3636
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3637
    check-cast v0, Landroid/support/v4/app/v;

    .line 3638
    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->t(Landroid/support/v4/app/Fragment;)V

    .line 3641
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3642
    goto :goto_0

    .line 3646
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1006
    const-string v1, "FragmentManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    iget-object v1, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1010
    iget-object v1, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 1012
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/v;->dq:Landroid/support/v4/app/t;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 1014
    :goto_0
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1015
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final u(Landroid/support/v4/app/Fragment;)V
    .locals 2

    .line 3649
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 3650
    iget-object v0, p0, Landroid/support/v4/app/v;->eI:Landroid/support/v4/app/Fragment;

    iget-object v0, v0, Landroid/support/v4/app/Fragment;->dp:Landroid/support/v4/app/v;

    .line 3651
    instance-of v1, v0, Landroid/support/v4/app/v;

    if-eqz v1, :cond_0

    .line 3652
    check-cast v0, Landroid/support/v4/app/v;

    .line 3653
    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->u(Landroid/support/v4/app/Fragment;)V

    .line 3656
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/v;->eF:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 3657
    goto :goto_0

    .line 3661
    :cond_1
    return-void
.end method
