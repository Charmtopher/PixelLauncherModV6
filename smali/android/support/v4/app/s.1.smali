.class public Landroid/support/v4/app/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final dq:Landroid/support/v4/app/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/t;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Landroid/support/v4/app/s;->dq:Landroid/support/v4/app/t;

    .line 54
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/support/v4/app/s;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->dp:Landroid/support/v4/app/v;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/v;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public final execPendingActions()Z
    .locals 1

    .line 388
    iget-object v0, p0, Landroid/support/v4/app/s;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->dp:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public final noteStateNotSaved()V
    .locals 1

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/s;->dq:Landroid/support/v4/app/t;

    iget-object v0, v0, Landroid/support/v4/app/t;->dp:Landroid/support/v4/app/v;

    invoke-virtual {v0}, Landroid/support/v4/app/v;->noteStateNotSaved()V

    .line 128
    return-void
.end method
