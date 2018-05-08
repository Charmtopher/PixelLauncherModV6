.class Landroid/support/v4/app/G;
.super Landroid/view/animation/AnimationSet;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final fl:Landroid/view/View;

.field private fm:Z

.field private fn:Z

.field private final mParent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 4080
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 4081
    iput-object p2, p0, Landroid/support/v4/app/G;->mParent:Landroid/view/ViewGroup;

    .line 4082
    iput-object p3, p0, Landroid/support/v4/app/G;->fl:Landroid/view/View;

    .line 4083
    invoke-virtual {p0, p1}, Landroid/support/v4/app/G;->addAnimation(Landroid/view/animation/Animation;)V

    .line 4084
    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 2

    .line 4088
    iget-boolean v0, p0, Landroid/support/v4/app/G;->fm:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4089
    iget-boolean p1, p0, Landroid/support/v4/app/G;->fn:Z

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4091
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result p1

    .line 4092
    if-nez p1, :cond_2

    .line 4093
    iput-boolean v1, p0, Landroid/support/v4/app/G;->fm:Z

    .line 4094
    iget-object p1, p0, Landroid/support/v4/app/G;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    .line 4096
    :cond_2
    return v1
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;F)Z
    .locals 2

    .line 4102
    iget-boolean v0, p0, Landroid/support/v4/app/G;->fm:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4103
    iget-boolean p1, p0, Landroid/support/v4/app/G;->fn:Z

    if-nez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 4105
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/AnimationSet;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result p1

    .line 4106
    if-nez p1, :cond_2

    .line 4107
    iput-boolean v1, p0, Landroid/support/v4/app/G;->fm:Z

    .line 4108
    iget-object p1, p0, Landroid/support/v4/app/G;->mParent:Landroid/view/ViewGroup;

    invoke-static {p1, p0}, Landroid/support/v4/app/av;->a(Landroid/view/View;Ljava/lang/Runnable;)Landroid/support/v4/app/av;

    .line 4110
    :cond_2
    return v1
.end method

.method public run()V
    .locals 2

    .line 4115
    iget-object v0, p0, Landroid/support/v4/app/G;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/G;->fl:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 4116
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/G;->fn:Z

    .line 4117
    return-void
.end method
