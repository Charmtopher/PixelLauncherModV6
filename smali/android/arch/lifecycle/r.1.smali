.class public Landroid/arch/lifecycle/r;
.super Landroid/arch/lifecycle/s;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field final ap:Landroid/arch/lifecycle/k;

.field final synthetic aq:Landroid/arch/lifecycle/q;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/q;Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/v;)V
    .locals 0

    .line 352
    iput-object p1, p0, Landroid/arch/lifecycle/r;->aq:Landroid/arch/lifecycle/q;

    .line 353
    invoke-direct {p0, p1, p3}, Landroid/arch/lifecycle/s;-><init>(Landroid/arch/lifecycle/q;Landroid/arch/lifecycle/v;)V

    .line 354
    iput-object p2, p0, Landroid/arch/lifecycle/r;->ap:Landroid/arch/lifecycle/k;

    .line 355
    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 0

    .line 364
    iget-object p1, p0, Landroid/arch/lifecycle/r;->ap:Landroid/arch/lifecycle/k;

    invoke-interface {p1}, Landroid/arch/lifecycle/k;->f()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/Lifecycle;->e()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroid/arch/lifecycle/Lifecycle$State;->R:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_0

    .line 365
    iget-object p1, p0, Landroid/arch/lifecycle/r;->aq:Landroid/arch/lifecycle/q;

    iget-object p2, p0, Landroid/arch/lifecycle/r;->ar:Landroid/arch/lifecycle/v;

    invoke-virtual {p1, p2}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/v;)V

    .line 366
    return-void

    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/arch/lifecycle/r;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/r;->a(Z)V

    .line 369
    return-void
.end method

.method final b(Landroid/arch/lifecycle/k;)Z
    .locals 1

    .line 373
    iget-object v0, p0, Landroid/arch/lifecycle/r;->ap:Landroid/arch/lifecycle/k;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final j()Z
    .locals 2

    .line 359
    iget-object v0, p0, Landroid/arch/lifecycle/r;->ap:Landroid/arch/lifecycle/k;

    invoke-interface {v0}, Landroid/arch/lifecycle/k;->f()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/arch/lifecycle/Lifecycle;->e()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->U:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/Lifecycle$State;->a(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method

.method final k()V
    .locals 1

    .line 378
    iget-object v0, p0, Landroid/arch/lifecycle/r;->ap:Landroid/arch/lifecycle/k;

    invoke-interface {v0}, Landroid/arch/lifecycle/k;->f()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/Lifecycle;->b(Landroid/arch/lifecycle/j;)V

    .line 379
    return-void
.end method
