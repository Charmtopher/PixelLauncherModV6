.class Landroid/support/v4/app/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic eq:Landroid/support/v4/app/n;


# direct methods
.method constructor <init>(Landroid/support/v4/app/n;)V
    .locals 0

    .line 83
    iput-object p1, p0, Landroid/support/v4/app/o;->eq:Landroid/support/v4/app/n;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 86
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 97
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 93
    :pswitch_0
    iget-object p1, p0, Landroid/support/v4/app/o;->eq:Landroid/support/v4/app/n;

    invoke-virtual {p1}, Landroid/support/v4/app/n;->ab()V

    .line 94
    iget-object p1, p0, Landroid/support/v4/app/o;->eq:Landroid/support/v4/app/n;

    iget-object p1, p1, Landroid/support/v4/app/n;->ei:Landroid/support/v4/app/s;

    invoke-virtual {p1}, Landroid/support/v4/app/s;->execPendingActions()Z

    .line 95
    return-void

    .line 88
    :pswitch_1
    iget-object p1, p0, Landroid/support/v4/app/o;->eq:Landroid/support/v4/app/n;

    iget-boolean p1, p1, Landroid/support/v4/app/n;->mStopped:Z

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Landroid/support/v4/app/o;->eq:Landroid/support/v4/app/n;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/n;->e(Z)V

    return-void

    .line 99
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
