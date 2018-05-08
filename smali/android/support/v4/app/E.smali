.class Landroid/support/v4/app/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final fj:Landroid/view/animation/Animation;

.field public final fk:Landroid/animation/Animator;


# direct methods
.method private constructor <init>(Landroid/animation/Animator;)V
    .locals 1

    .line 3962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3963
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    .line 3964
    iput-object p1, p0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    .line 3965
    if-eqz p1, :cond_0

    .line 3968
    return-void

    .line 3966
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animator cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/animation/Animator;B)V
    .locals 0

    .line 3950
    invoke-direct {p0, p1}, Landroid/support/v4/app/E;-><init>(Landroid/animation/Animator;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/animation/Animation;)V
    .locals 1

    .line 3954
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3955
    iput-object p1, p0, Landroid/support/v4/app/E;->fj:Landroid/view/animation/Animation;

    .line 3956
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/E;->fk:Landroid/animation/Animator;

    .line 3957
    if-eqz p1, :cond_0

    .line 3960
    return-void

    .line 3958
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Animation cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation;B)V
    .locals 0

    .line 3950
    invoke-direct {p0, p1}, Landroid/support/v4/app/E;-><init>(Landroid/view/animation/Animation;)V

    return-void
.end method
