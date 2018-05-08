.class public abstract Landroid/support/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/a/c;


# static fields
.field public static final aP:Landroid/support/a/y;

.field public static final aQ:Landroid/support/a/y;

.field public static final aR:Landroid/support/a/y;

.field public static final aS:Landroid/support/a/y;

.field public static final aT:Landroid/support/a/y;

.field public static final aU:Landroid/support/a/y;

.field public static final aV:Landroid/support/a/y;

.field public static final aW:Landroid/support/a/y;

.field public static final aX:Landroid/support/a/y;

.field public static final aY:Landroid/support/a/y;

.field public static final aZ:Landroid/support/a/y;

.field public static final ba:Landroid/support/a/y;

.field public static final bb:Landroid/support/a/y;

.field public static final bc:Landroid/support/a/y;


# instance fields
.field private aK:J

.field public bd:Z

.field final be:Ljava/lang/Object;

.field final bf:Landroid/support/a/z;

.field bh:Z

.field public bi:F

.field public bj:F

.field bk:F

.field private final bl:Ljava/util/ArrayList;

.field private final mEndListeners:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/support/a/j;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Landroid/support/a/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aP:Landroid/support/a/y;

    .line 72
    new-instance v0, Landroid/support/a/p;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Landroid/support/a/p;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aQ:Landroid/support/a/y;

    .line 87
    new-instance v0, Landroid/support/a/q;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Landroid/support/a/q;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aR:Landroid/support/a/y;

    .line 102
    new-instance v0, Landroid/support/a/r;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/support/a/r;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aS:Landroid/support/a/y;

    .line 117
    new-instance v0, Landroid/support/a/s;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/support/a/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aT:Landroid/support/a/y;

    .line 132
    new-instance v0, Landroid/support/a/t;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Landroid/support/a/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aU:Landroid/support/a/y;

    .line 147
    new-instance v0, Landroid/support/a/u;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Landroid/support/a/u;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aV:Landroid/support/a/y;

    .line 162
    new-instance v0, Landroid/support/a/v;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Landroid/support/a/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aW:Landroid/support/a/y;

    .line 177
    new-instance v0, Landroid/support/a/w;

    const-string v1, "x"

    invoke-direct {v0, v1}, Landroid/support/a/w;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aX:Landroid/support/a/y;

    .line 192
    new-instance v0, Landroid/support/a/k;

    const-string v1, "y"

    invoke-direct {v0, v1}, Landroid/support/a/k;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aY:Landroid/support/a/y;

    .line 207
    new-instance v0, Landroid/support/a/l;

    const-string v1, "z"

    invoke-direct {v0, v1}, Landroid/support/a/l;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->aZ:Landroid/support/a/y;

    .line 222
    new-instance v0, Landroid/support/a/m;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Landroid/support/a/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->ba:Landroid/support/a/y;

    .line 238
    new-instance v0, Landroid/support/a/n;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Landroid/support/a/n;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->bb:Landroid/support/a/y;

    .line 253
    new-instance v0, Landroid/support/a/o;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Landroid/support/a/o;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/support/a/i;->bc:Landroid/support/a/y;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Landroid/support/a/z;)V
    .locals 2

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/i;->mVelocity:F

    .line 292
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/a/i;->mValue:F

    .line 296
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/a/i;->bd:Z

    .line 305
    iput-boolean v1, p0, Landroid/support/a/i;->bh:Z

    .line 308
    iput v0, p0, Landroid/support/a/i;->bi:F

    .line 309
    iget v0, p0, Landroid/support/a/i;->bi:F

    neg-float v0, v0

    iput v0, p0, Landroid/support/a/i;->bj:F

    .line 312
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/a/i;->aK:J

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/i;->mEndListeners:Ljava/util/ArrayList;

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/a/i;->bl:Ljava/util/ArrayList;

    .line 357
    iput-object p1, p0, Landroid/support/a/i;->be:Ljava/lang/Object;

    .line 358
    iput-object p2, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    .line 359
    iget-object p1, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    sget-object p2, Landroid/support/a/i;->aU:Landroid/support/a/y;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    sget-object p2, Landroid/support/a/i;->aV:Landroid/support/a/y;

    if-eq p1, p2, :cond_4

    iget-object p1, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    sget-object p2, Landroid/support/a/i;->aW:Landroid/support/a/y;

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    iget-object p1, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    sget-object p2, Landroid/support/a/i;->ba:Landroid/support/a/y;

    const/high16 v0, 0x3b800000    # 0.00390625f

    if-ne p1, p2, :cond_1

    .line 363
    iput v0, p0, Landroid/support/a/i;->bk:F

    return-void

    .line 364
    :cond_1
    iget-object p1, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    sget-object p2, Landroid/support/a/i;->aS:Landroid/support/a/y;

    if-eq p1, p2, :cond_3

    iget-object p1, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    sget-object p2, Landroid/support/a/i;->aT:Landroid/support/a/y;

    if-ne p1, p2, :cond_2

    goto :goto_0

    .line 367
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/support/a/i;->bk:F

    .line 369
    return-void

    .line 365
    :cond_3
    :goto_0
    iput v0, p0, Landroid/support/a/i;->bk:F

    return-void

    .line 361
    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    iput p1, p0, Landroid/support/a/i;->bk:F

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .locals 2

    .line 547
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 548
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 549
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 547
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 552
    :cond_1
    return-void
.end method


# virtual methods
.method final a(F)V
    .locals 2

    .line 690
    iget-object v0, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    iget-object v1, p0, Landroid/support/a/i;->be:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/support/a/z;->setValue(Ljava/lang/Object;F)V

    .line 691
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroid/support/a/i;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 692
    iget-object v0, p0, Landroid/support/a/i;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    iget-object v0, p0, Landroid/support/a/i;->bl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 691
    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 696
    :cond_1
    iget-object p1, p0, Landroid/support/a/i;->bl:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/a/i;->a(Ljava/util/ArrayList;)V

    .line 697
    return-void
.end method

.method public final a(J)Z
    .locals 6

    .line 639
    iget-wide v0, p0, Landroid/support/a/i;->aK:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 641
    iput-wide p1, p0, Landroid/support/a/i;->aK:J

    .line 642
    iget p1, p0, Landroid/support/a/i;->mValue:F

    invoke-virtual {p0, p1}, Landroid/support/a/i;->a(F)V

    .line 643
    return v1

    .line 645
    :cond_0
    iget-wide v4, p0, Landroid/support/a/i;->aK:J

    sub-long v4, p1, v4

    .line 646
    iput-wide p1, p0, Landroid/support/a/i;->aK:J

    .line 647
    invoke-virtual {p0, v4, v5}, Landroid/support/a/i;->b(J)Z

    move-result p1

    .line 649
    iget p2, p0, Landroid/support/a/i;->mValue:F

    iget v0, p0, Landroid/support/a/i;->bi:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Landroid/support/a/i;->mValue:F

    .line 650
    iget p2, p0, Landroid/support/a/i;->mValue:F

    iget v0, p0, Landroid/support/a/i;->bj:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/support/a/i;->mValue:F

    .line 652
    iget p2, p0, Landroid/support/a/i;->mValue:F

    invoke-virtual {p0, p2}, Landroid/support/a/i;->a(F)V

    .line 654
    if-eqz p1, :cond_4

    .line 655
    iput-boolean v1, p0, Landroid/support/a/i;->bh:Z

    invoke-static {}, Landroid/support/a/a;->p()Landroid/support/a/a;

    move-result-object p2

    iget-object v0, p2, Landroid/support/a/a;->aC:Landroid/support/v4/c/u;

    invoke-virtual {v0, p0}, Landroid/support/v4/c/u;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Landroid/support/a/a;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v4, p2, Landroid/support/a/a;->aD:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p2, Landroid/support/a/a;->aH:Z

    :cond_1
    iput-wide v2, p0, Landroid/support/a/i;->aK:J

    iput-boolean v1, p0, Landroid/support/a/i;->bd:Z

    :goto_0
    iget-object p2, p0, Landroid/support/a/i;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge v1, p2, :cond_3

    iget-object p2, p0, Landroid/support/a/i;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Landroid/support/a/i;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Landroid/support/a/i;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p2}, Landroid/support/a/i;->a(Ljava/util/ArrayList;)V

    .line 657
    :cond_4
    return p1
.end method

.method abstract b(J)Z
.end method

.method public start()V
    .locals 2

    .line 576
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 579
    iget-boolean v0, p0, Landroid/support/a/i;->bh:Z

    if-nez v0, :cond_4

    .line 580
    iget-boolean v0, p0, Landroid/support/a/i;->bh:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/i;->bh:Z

    iget-boolean v0, p0, Landroid/support/a/i;->bd:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/a/i;->bf:Landroid/support/a/z;

    iget-object v1, p0, Landroid/support/a/i;->be:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/a/z;->getValue(Ljava/lang/Object;)F

    move-result v0

    iput v0, p0, Landroid/support/a/i;->mValue:F

    :cond_0
    iget v0, p0, Landroid/support/a/i;->mValue:F

    iget v1, p0, Landroid/support/a/i;->bi:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget v0, p0, Landroid/support/a/i;->mValue:F

    iget v1, p0, Landroid/support/a/i;->bj:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_3

    invoke-static {}, Landroid/support/a/a;->p()Landroid/support/a/a;

    move-result-object v0

    iget-object v1, v0, Landroid/support/a/a;->aD:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/support/a/a;->q()Landroid/support/a/d;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/a/d;->s()V

    :cond_1
    iget-object v1, v0, Landroid/support/a/a;->aD:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, v0, Landroid/support/a/a;->aD:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Starting value need to be in between min value and max value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :cond_4
    :goto_0
    return-void

    .line 577
    :cond_5
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
