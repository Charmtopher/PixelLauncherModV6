.class Landroid/arch/lifecycle/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Y:Landroid/arch/lifecycle/Lifecycle$State;

.field af:Landroid/arch/lifecycle/i;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/j;Landroid/arch/lifecycle/Lifecycle$State;)V
    .locals 0

    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    invoke-static {p1}, Landroid/arch/lifecycle/p;->b(Ljava/lang/Object;)Landroid/arch/lifecycle/i;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/lifecycle/n;->af:Landroid/arch/lifecycle/i;

    .line 348
    iput-object p2, p0, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    .line 349
    return-void
.end method


# virtual methods
.method final b(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    .line 352
    invoke-static {p2}, Landroid/arch/lifecycle/l;->b(Landroid/arch/lifecycle/Lifecycle$Event;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v0

    .line 353
    iget-object v1, p0, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-static {v1, v0}, Landroid/arch/lifecycle/l;->a(Landroid/arch/lifecycle/Lifecycle$State;Landroid/arch/lifecycle/Lifecycle$State;)Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    .line 354
    iget-object v1, p0, Landroid/arch/lifecycle/n;->af:Landroid/arch/lifecycle/i;

    invoke-interface {v1, p1, p2}, Landroid/arch/lifecycle/i;->a(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 355
    iput-object v0, p0, Landroid/arch/lifecycle/n;->Y:Landroid/arch/lifecycle/Lifecycle$State;

    .line 356
    return-void
.end method
