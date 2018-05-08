.class Landroid/support/v4/app/p;
.super Landroid/support/v4/app/t;
.source "SourceFile"


# instance fields
.field final synthetic eq:Landroid/support/v4/app/n;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/n;)V
    .locals 0

    .line 983
    iput-object p1, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    .line 984
    invoke-direct {p0, p1}, Landroid/support/v4/app/t;-><init>(Landroid/support/v4/app/n;)V

    .line 985
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 7

    .line 1020
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/n;->en:Z

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p3, v2, :cond_0

    :try_start_0
    invoke-static {v0, p2, v2, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-boolean v3, v0, Landroid/support/v4/app/n;->en:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :try_start_1
    invoke-static {p3}, Landroid/support/v4/app/n;->k(I)V

    iget-object v2, v0, Landroid/support/v4/app/n;->ep:Landroid/support/v4/c/v;

    invoke-virtual {v2}, Landroid/support/v4/c/v;->size()I

    move-result v2

    const v4, 0xfffe

    if-ge v2, v4, :cond_3

    :goto_1
    iget-object v2, v0, Landroid/support/v4/app/n;->ep:Landroid/support/v4/c/v;

    iget v5, v0, Landroid/support/v4/app/n;->eo:I

    iget-boolean v6, v2, Landroid/support/v4/c/v;->jt:Z

    if-eqz v6, :cond_1

    invoke-virtual {v2}, Landroid/support/v4/c/v;->gc()V

    :cond_1
    iget-object v6, v2, Landroid/support/v4/c/v;->jP:[I

    iget v2, v2, Landroid/support/v4/c/v;->mSize:I

    invoke-static {v6, v2, v5}, Landroid/support/v4/c/e;->a([III)I

    move-result v2

    if-ltz v2, :cond_2

    iget v2, v0, Landroid/support/v4/app/n;->eo:I

    add-int/2addr v2, v1

    rem-int/2addr v2, v4

    iput v2, v0, Landroid/support/v4/app/n;->eo:I

    goto :goto_1

    :cond_2
    iget v2, v0, Landroid/support/v4/app/n;->eo:I

    iget-object v5, v0, Landroid/support/v4/app/n;->ep:Landroid/support/v4/c/v;

    iget-object p1, p1, Landroid/support/v4/app/Fragment;->dd:Ljava/lang/String;

    invoke-virtual {v5, v2, p1}, Landroid/support/v4/c/v;->put(ILjava/lang/Object;)V

    iget p1, v0, Landroid/support/v4/app/n;->eo:I

    add-int/2addr p1, v1

    rem-int/2addr p1, v4

    iput p1, v0, Landroid/support/v4/app/n;->eo:I

    add-int/2addr v2, v1

    shl-int/lit8 p1, v2, 0x10

    const v1, 0xffff

    and-int/2addr p3, v1

    add-int/2addr p1, p3

    invoke-static {v0, p2, p1, p4}, Landroid/support/v4/app/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Too many pending Fragment activity results."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iput-boolean v3, v0, Landroid/support/v4/app/n;->en:Z

    throw p1
.end method

.method public final ae()Z
    .locals 1

    .line 994
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final af()V
    .locals 1

    .line 1009
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->invalidateOptionsMenu()V

    .line 1010
    return-void
.end method

.method public final onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 989
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/n;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method public final onFindViewById(I)Landroid/view/View;
    .locals 1

    .line 1063
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/n;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    .line 999
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final onGetWindowAnimations()I
    .locals 1

    .line 1051
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1052
    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return v0
.end method

.method public final onHasView()Z
    .locals 1

    .line 1068
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1069
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onHasWindowAnimations()Z
    .locals 1

    .line 1046
    iget-object v0, p0, Landroid/support/v4/app/p;->eq:Landroid/support/v4/app/n;

    invoke-virtual {v0}, Landroid/support/v4/app/n;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
