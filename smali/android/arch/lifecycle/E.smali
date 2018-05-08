.class public Landroid/arch/lifecycle/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aA:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/E;->aA:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 55
    iget-object v0, p0, Landroid/arch/lifecycle/E;->aA:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/B;

    .line 56
    invoke-virtual {v1}, Landroid/arch/lifecycle/B;->m()V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Landroid/arch/lifecycle/E;->aA:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 59
    return-void
.end method
