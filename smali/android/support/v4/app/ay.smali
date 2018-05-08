.class public Landroid/support/v4/app/ay;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/k;


# instance fields
.field private dM:Landroid/arch/lifecycle/l;

.field private hM:Landroid/support/v4/c/u;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Landroid/support/v4/c/u;

    invoke-direct {v0}, Landroid/support/v4/c/u;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ay;->hM:Landroid/support/v4/c/u;

    .line 48
    new-instance v0, Landroid/arch/lifecycle/l;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/l;-><init>(Landroid/arch/lifecycle/k;)V

    iput-object v0, p0, Landroid/support/v4/app/ay;->dM:Landroid/arch/lifecycle/l;

    .line 97
    return-void
.end method


# virtual methods
.method public f()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 91
    iget-object v0, p0, Landroid/support/v4/app/ay;->dM:Landroid/arch/lifecycle/l;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Landroid/arch/lifecycle/y;->a(Landroid/app/Activity;)V

    .line 69
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    iget-object v0, p0, Landroid/support/v4/app/ay;->dM:Landroid/arch/lifecycle/l;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$State;->T:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/l;->b(Landroid/arch/lifecycle/Lifecycle$State;)V

    .line 75
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 76
    return-void
.end method
