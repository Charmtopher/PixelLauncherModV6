.class public Landroid/arch/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/a/b/h;
.implements Ljava/util/Iterator;


# instance fields
.field private t:Landroid/arch/a/b/e;

.field private u:Z

.field final synthetic v:Landroid/arch/a/b/b;


# direct methods
.method private constructor <init>(Landroid/arch/a/b/b;)V
    .locals 0

    .line 301
    iput-object p1, p0, Landroid/arch/a/b/f;->v:Landroid/arch/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/arch/a/b/f;->u:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/arch/a/b/b;B)V
    .locals 0

    .line 301
    invoke-direct {p0, p1}, Landroid/arch/a/b/f;-><init>(Landroid/arch/a/b/b;)V

    return-void
.end method


# virtual methods
.method public final c(Landroid/arch/a/b/e;)V
    .locals 1

    .line 307
    iget-object v0, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    if-ne p1, v0, :cond_1

    .line 308
    iget-object p1, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    iget-object p1, p1, Landroid/arch/a/b/e;->r:Landroid/arch/a/b/e;

    iput-object p1, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    .line 309
    iget-object p1, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Landroid/arch/a/b/f;->u:Z

    .line 311
    :cond_1
    return-void
.end method

.method public hasNext()Z
    .locals 3

    .line 315
    iget-boolean v0, p0, Landroid/arch/a/b/f;->u:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Landroid/arch/a/b/f;->v:Landroid/arch/a/b/b;

    invoke-static {v0}, Landroid/arch/a/b/b;->a(Landroid/arch/a/b/b;)Landroid/arch/a/b/e;

    move-result-object v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 318
    :cond_1
    iget-object v0, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    iget-object v0, v0, Landroid/arch/a/b/e;->q:Landroid/arch/a/b/e;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 301
    iget-boolean v0, p0, Landroid/arch/a/b/f;->u:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/a/b/f;->u:Z

    iget-object v0, p0, Landroid/arch/a/b/f;->v:Landroid/arch/a/b/b;

    invoke-static {v0}, Landroid/arch/a/b/b;->a(Landroid/arch/a/b/b;)Landroid/arch/a/b/e;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    iget-object v0, v0, Landroid/arch/a/b/e;->q:Landroid/arch/a/b/e;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    iget-object v0, p0, Landroid/arch/a/b/f;->t:Landroid/arch/a/b/e;

    return-object v0
.end method
