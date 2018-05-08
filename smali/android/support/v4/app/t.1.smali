.class public abstract Landroid/support/v4/app/t;
.super Landroid/support/v4/app/r;
.source "SourceFile"


# instance fields
.field final dp:Landroid/support/v4/app/v;

.field private final eu:I

.field final mActivity:Landroid/app/Activity;

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/app/v;

    invoke-direct {v0}, Landroid/support/v4/app/v;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/t;->dp:Landroid/support/v4/app/v;

    .line 62
    iput-object p1, p0, Landroid/support/v4/app/t;->mActivity:Landroid/app/Activity;

    .line 63
    const-string p1, "context == null"

    invoke-static {p2, p1}, Landroid/support/v4/c/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    .line 64
    const-string p1, "handler == null"

    invoke-static {p3, p1}, Landroid/support/v4/c/t;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    iput-object p1, p0, Landroid/support/v4/app/t;->mHandler:Landroid/os/Handler;

    .line 65
    iput p4, p0, Landroid/support/v4/app/t;->eu:I

    .line 66
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/n;)V
    .locals 2

    .line 57
    iget-object v0, p1, Landroid/support/v4/app/n;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/t;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 58
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    .line 125
    const/4 p1, -0x1

    if-ne p3, p1, :cond_0

    .line 129
    iget-object p1, p0, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void

    .line 126
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public ae()Z
    .locals 1

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public af()V
    .locals 0

    .line 109
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 78
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 0

    .line 180
    const/4 p1, 0x0

    return-object p1
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 93
    iget-object v0, p0, Landroid/support/v4/app/t;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 1

    .line 174
    iget v0, p0, Landroid/support/v4/app/t;->eu:I

    return v0
.end method

.method public onHasView()Z
    .locals 1

    .line 185
    const/4 v0, 0x1

    return v0
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    .line 167
    const/4 v0, 0x1

    return v0
.end method
