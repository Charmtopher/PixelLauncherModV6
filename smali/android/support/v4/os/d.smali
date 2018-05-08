.class Landroid/support/v4/os/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ja:Landroid/support/v4/os/ResultReceiver;

.field final jb:I

.field final jc:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V
    .locals 0

    .line 54
    iput-object p1, p0, Landroid/support/v4/os/d;->ja:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p2, p0, Landroid/support/v4/os/d;->jb:I

    .line 56
    iput-object p3, p0, Landroid/support/v4/os/d;->jc:Landroid/os/Bundle;

    .line 57
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Landroid/support/v4/os/d;->ja:Landroid/support/v4/os/ResultReceiver;

    iget v1, p0, Landroid/support/v4/os/d;->jb:I

    iget-object v2, p0, Landroid/support/v4/os/d;->jc:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    .line 62
    return-void
.end method
