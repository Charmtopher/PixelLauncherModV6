.class public abstract Landroid/arch/lifecycle/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic aq:Landroid/arch/lifecycle/q;

.field final ar:Landroid/arch/lifecycle/v;

.field as:I

.field mActive:Z


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/q;Landroid/arch/lifecycle/v;)V
    .locals 0

    .line 387
    iput-object p1, p0, Landroid/arch/lifecycle/s;->aq:Landroid/arch/lifecycle/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 p1, -0x1

    iput p1, p0, Landroid/arch/lifecycle/s;->as:I

    .line 388
    iput-object p2, p0, Landroid/arch/lifecycle/s;->ar:Landroid/arch/lifecycle/v;

    .line 389
    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 4

    .line 401
    iget-boolean v0, p0, Landroid/arch/lifecycle/s;->mActive:Z

    if-ne p1, v0, :cond_0

    .line 402
    return-void

    .line 406
    :cond_0
    iput-boolean p1, p0, Landroid/arch/lifecycle/s;->mActive:Z

    .line 407
    iget-object p1, p0, Landroid/arch/lifecycle/s;->aq:Landroid/arch/lifecycle/q;

    invoke-static {p1}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/q;)I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 408
    move p1, v0

    goto :goto_0

    .line 407
    :cond_1
    const/4 p1, 0x0

    .line 408
    :goto_0
    iget-object v1, p0, Landroid/arch/lifecycle/s;->aq:Landroid/arch/lifecycle/q;

    invoke-static {v1}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/q;)I

    move-result v2

    iget-boolean v3, p0, Landroid/arch/lifecycle/s;->mActive:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    add-int/2addr v2, v0

    invoke-static {v1, v2}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/q;I)I

    .line 409
    if-eqz p1, :cond_3

    iget-boolean p1, p0, Landroid/arch/lifecycle/s;->mActive:Z

    if-eqz p1, :cond_3

    .line 410
    iget-object p1, p0, Landroid/arch/lifecycle/s;->aq:Landroid/arch/lifecycle/q;

    invoke-virtual {p1}, Landroid/arch/lifecycle/q;->onActive()V

    .line 412
    :cond_3
    iget-object p1, p0, Landroid/arch/lifecycle/s;->aq:Landroid/arch/lifecycle/q;

    invoke-static {p1}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/q;)I

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Landroid/arch/lifecycle/s;->mActive:Z

    if-nez p1, :cond_4

    .line 413
    iget-object p1, p0, Landroid/arch/lifecycle/s;->aq:Landroid/arch/lifecycle/q;

    invoke-virtual {p1}, Landroid/arch/lifecycle/q;->i()V

    .line 415
    :cond_4
    iget-boolean p1, p0, Landroid/arch/lifecycle/s;->mActive:Z

    if-eqz p1, :cond_5

    .line 416
    iget-object p1, p0, Landroid/arch/lifecycle/s;->aq:Landroid/arch/lifecycle/q;

    invoke-static {p1, p0}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/q;Landroid/arch/lifecycle/s;)V

    .line 418
    :cond_5
    return-void
.end method

.method public b(Landroid/arch/lifecycle/k;)Z
    .locals 0

    .line 394
    const/4 p1, 0x0

    return p1
.end method

.method abstract j()Z
.end method

.method k()V
    .locals 0

    .line 398
    return-void
.end method
