.class public abstract Landroid/arch/lifecycle/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ai:Ljava/lang/Object;


# instance fields
.field public aj:Landroid/arch/a/b/b;

.field public ak:I

.field public volatile al:Ljava/lang/Object;

.field private am:I

.field private an:Z

.field private ao:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/arch/lifecycle/q;->ai:Ljava/lang/Object;

    return-void
.end method

.method static synthetic a(Landroid/arch/lifecycle/q;)I
    .locals 0

    .line 59
    iget p0, p0, Landroid/arch/lifecycle/q;->ak:I

    return p0
.end method

.method static synthetic a(Landroid/arch/lifecycle/q;I)I
    .locals 0

    .line 59
    iput p1, p0, Landroid/arch/lifecycle/q;->ak:I

    return p1
.end method

.method static synthetic a(Landroid/arch/lifecycle/q;Landroid/arch/lifecycle/s;)V
    .locals 3

    .line 59
    iget-boolean v0, p0, Landroid/arch/lifecycle/q;->an:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Landroid/arch/lifecycle/q;->ao:Z

    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/arch/lifecycle/q;->an:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/q;->ao:Z

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/s;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/arch/lifecycle/q;->aj:Landroid/arch/a/b/b;

    invoke-virtual {v1}, Landroid/arch/a/b/b;->c()Landroid/arch/a/b/f;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/arch/lifecycle/s;

    invoke-direct {p0, v2}, Landroid/arch/lifecycle/q;->a(Landroid/arch/lifecycle/s;)V

    iget-boolean v2, p0, Landroid/arch/lifecycle/q;->ao:Z

    if-eqz v2, :cond_3

    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroid/arch/lifecycle/q;->ao:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, Landroid/arch/lifecycle/q;->an:Z

    return-void
.end method

.method private a(Landroid/arch/lifecycle/s;)V
    .locals 2

    .line 92
    iget-boolean v0, p1, Landroid/arch/lifecycle/s;->mActive:Z

    if-nez v0, :cond_0

    .line 93
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/arch/lifecycle/s;->j()Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/s;->a(Z)V

    .line 102
    return-void

    .line 104
    :cond_1
    iget v0, p1, Landroid/arch/lifecycle/s;->as:I

    iget v1, p0, Landroid/arch/lifecycle/q;->am:I

    if-lt v0, v1, :cond_2

    .line 105
    return-void

    .line 107
    :cond_2
    iget v0, p0, Landroid/arch/lifecycle/q;->am:I

    iput v0, p1, Landroid/arch/lifecycle/s;->as:I

    .line 109
    iget-object p1, p1, Landroid/arch/lifecycle/s;->ar:Landroid/arch/lifecycle/v;

    iget-object v0, p0, Landroid/arch/lifecycle/q;->al:Ljava/lang/Object;

    invoke-interface {p1, v0}, Landroid/arch/lifecycle/v;->c(Ljava/lang/Object;)V

    .line 110
    return-void
.end method


# virtual methods
.method public a(Landroid/arch/lifecycle/v;)V
    .locals 2

    .line 217
    invoke-static {}, Landroid/arch/a/a/a;->a()Landroid/arch/a/a/a;

    move-result-object v0

    iget-object v0, v0, Landroid/arch/a/a/a;->c:Landroid/arch/a/a/e;

    invoke-virtual {v0}, Landroid/arch/a/a/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Landroid/arch/lifecycle/q;->aj:Landroid/arch/a/b/b;

    invoke-virtual {v0, p1}, Landroid/arch/a/b/b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/arch/lifecycle/s;

    .line 219
    if-nez p1, :cond_0

    .line 220
    return-void

    .line 222
    :cond_0
    invoke-virtual {p1}, Landroid/arch/lifecycle/s;->k()V

    .line 223
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/arch/lifecycle/s;->a(Z)V

    .line 224
    return-void

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot invoke "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "removeObserver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on a background thread"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()V
    .locals 0

    .line 327
    return-void
.end method

.method public onActive()V
    .locals 0

    .line 314
    return-void
.end method
