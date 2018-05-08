.class Landroid/support/v7/widget/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic oX:Landroid/support/v7/widget/r;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/r;)V
    .locals 0

    .line 119
    iput-object p1, p0, Landroid/support/v7/widget/s;->oX:Landroid/support/v7/widget/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 122
    iget-object v0, p0, Landroid/support/v7/widget/s;->oX:Landroid/support/v7/widget/r;

    iget v1, v0, Landroid/support/v7/widget/r;->oV:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :pswitch_1
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v7/widget/r;->oV:I

    iget-object v1, v0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, v0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, v0, Landroid/support/v7/widget/r;->oU:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 123
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
