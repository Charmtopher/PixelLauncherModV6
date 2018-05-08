.class Landroid/support/v4/app/Z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# instance fields
.field final synthetic fN:Ljava/util/ArrayList;

.field final synthetic gl:Landroid/support/v4/app/X;

.field final synthetic gm:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/v4/app/X;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    .line 144
    iput-object p1, p0, Landroid/support/v4/app/Z;->gl:Landroid/support/v4/app/X;

    iput-object p2, p0, Landroid/support/v4/app/Z;->gm:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/Z;->fN:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    .line 161
    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 3

    .line 151
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    .line 152
    iget-object p1, p0, Landroid/support/v4/app/Z;->gm:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Landroid/support/v4/app/Z;->fN:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 154
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 155
    iget-object v2, p0, Landroid/support/v4/app/Z;->fN:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    .line 165
    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    .line 169
    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 0

    .line 147
    return-void
.end method
