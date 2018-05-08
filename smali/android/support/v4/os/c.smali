.class Landroid/support/v4/os/c;
.super Landroid/support/v4/os/IResultReceiver$Stub;
.source "SourceFile"


# instance fields
.field final synthetic ja:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method constructor <init>(Landroid/support/v4/os/ResultReceiver;)V
    .locals 0

    .line 65
    iput-object p1, p0, Landroid/support/v4/os/c;->ja:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Landroid/support/v4/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final send(ILandroid/os/Bundle;)V
    .locals 3

    .line 68
    iget-object v0, p0, Landroid/support/v4/os/c;->ja:Landroid/support/v4/os/ResultReceiver;

    iget-object v0, v0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Landroid/support/v4/os/c;->ja:Landroid/support/v4/os/ResultReceiver;

    iget-object v0, v0, Landroid/support/v4/os/ResultReceiver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/os/d;

    iget-object v2, p0, Landroid/support/v4/os/c;->ja:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {v1, v2, p1, p2}, Landroid/support/v4/os/d;-><init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Landroid/support/v4/os/c;->ja:Landroid/support/v4/os/ResultReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 73
    return-void
.end method
