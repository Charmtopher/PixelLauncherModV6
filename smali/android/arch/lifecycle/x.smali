.class Landroid/arch/lifecycle/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/i;


# instance fields
.field private final au:Ljava/lang/Object;

.field private final av:Landroid/arch/lifecycle/b;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Landroid/arch/lifecycle/x;->au:Ljava/lang/Object;

    .line 31
    sget-object p1, Landroid/arch/lifecycle/a;->z:Landroid/arch/lifecycle/a;

    iget-object v0, p0, Landroid/arch/lifecycle/x;->au:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/a;->b(Ljava/lang/Class;)Landroid/arch/lifecycle/b;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/x;->av:Landroid/arch/lifecycle/b;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 36
    iget-object v0, p0, Landroid/arch/lifecycle/x;->av:Landroid/arch/lifecycle/b;

    iget-object v1, p0, Landroid/arch/lifecycle/x;->au:Ljava/lang/Object;

    iget-object v2, v0, Landroid/arch/lifecycle/b;->C:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-static {v2, p1, p2, v1}, Landroid/arch/lifecycle/b;->a(Ljava/util/List;Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/arch/lifecycle/b;->C:Ljava/util/Map;

    sget-object v2, Landroid/arch/lifecycle/Lifecycle$Event;->P:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0, p1, p2, v1}, Landroid/arch/lifecycle/b;->a(Ljava/util/List;Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;Ljava/lang/Object;)V

    .line 37
    return-void
.end method
