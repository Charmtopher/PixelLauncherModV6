.class public abstract Landroid/support/v4/app/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method public static c(Landroid/arch/lifecycle/k;)Landroid/support/v4/app/ag;
    .locals 2

    .line 128
    new-instance v0, Landroid/support/v4/app/ai;

    move-object v1, p0

    check-cast v1, Landroid/arch/lifecycle/F;

    invoke-interface {v1}, Landroid/arch/lifecycle/F;->o()Landroid/arch/lifecycle/E;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/ai;-><init>(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/E;)V

    return-object v0
.end method


# virtual methods
.method public abstract at()V
.end method

.method public abstract dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method
