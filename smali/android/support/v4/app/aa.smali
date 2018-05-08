.class Landroid/support/v4/app/aa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic fN:Ljava/util/ArrayList;

.field final synthetic fO:Ljava/lang/Object;

.field final synthetic fS:Ljava/util/ArrayList;

.field final synthetic fT:Ljava/util/ArrayList;

.field final synthetic fU:Ljava/lang/Object;

.field final synthetic gl:Landroid/support/v4/app/X;

.field final synthetic gn:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/support/v4/app/X;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 215
    iput-object p1, p0, Landroid/support/v4/app/aa;->gl:Landroid/support/v4/app/X;

    iput-object p2, p0, Landroid/support/v4/app/aa;->fO:Ljava/lang/Object;

    iput-object p3, p0, Landroid/support/v4/app/aa;->fT:Ljava/util/ArrayList;

    iput-object p4, p0, Landroid/support/v4/app/aa;->fU:Ljava/lang/Object;

    iput-object p5, p0, Landroid/support/v4/app/aa;->fN:Ljava/util/ArrayList;

    iput-object p6, p0, Landroid/support/v4/app/aa;->gn:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/v4/app/aa;->fS:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 235
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    .line 231
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .line 239
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .line 243
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 3

    .line 218
    iget-object p1, p0, Landroid/support/v4/app/aa;->fO:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 219
    iget-object p1, p0, Landroid/support/v4/app/aa;->gl:Landroid/support/v4/app/X;

    iget-object v1, p0, Landroid/support/v4/app/aa;->fO:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/aa;->fT:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/X;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 221
    :cond_0
    iget-object p1, p0, Landroid/support/v4/app/aa;->fU:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 222
    iget-object p1, p0, Landroid/support/v4/app/aa;->gl:Landroid/support/v4/app/X;

    iget-object v1, p0, Landroid/support/v4/app/aa;->fU:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/aa;->fN:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/X;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 224
    :cond_1
    iget-object p1, p0, Landroid/support/v4/app/aa;->gn:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 225
    iget-object p1, p0, Landroid/support/v4/app/aa;->gl:Landroid/support/v4/app/X;

    iget-object v1, p0, Landroid/support/v4/app/aa;->gn:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/aa;->fS:Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v2, v0}, Landroid/support/v4/app/X;->b(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 227
    :cond_2
    return-void
.end method
