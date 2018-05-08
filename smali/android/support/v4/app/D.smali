.class Landroid/support/v4/app/D;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field private final fi:Landroid/view/animation/Animation$AnimationListener;


# direct methods
.method private constructor <init>(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 0

    .line 3977
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3978
    iput-object p1, p0, Landroid/support/v4/app/D;->fi:Landroid/view/animation/Animation$AnimationListener;

    .line 3979
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/animation/Animation$AnimationListener;B)V
    .locals 0

    .line 3974
    invoke-direct {p0, p1}, Landroid/support/v4/app/D;-><init>(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 3992
    iget-object v0, p0, Landroid/support/v4/app/D;->fi:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3993
    iget-object v0, p0, Landroid/support/v4/app/D;->fi:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 3995
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1

    .line 4000
    iget-object v0, p0, Landroid/support/v4/app/D;->fi:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 4001
    iget-object v0, p0, Landroid/support/v4/app/D;->fi:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationRepeat(Landroid/view/animation/Animation;)V

    .line 4003
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 3984
    iget-object v0, p0, Landroid/support/v4/app/D;->fi:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v0, :cond_0

    .line 3985
    iget-object v0, p0, Landroid/support/v4/app/D;->fi:Landroid/view/animation/Animation$AnimationListener;

    invoke-interface {v0, p1}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 3987
    :cond_0
    return-void
.end method
