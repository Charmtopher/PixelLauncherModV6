.class abstract Landroid/arch/a/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/a/b/h;
.implements Ljava/util/Iterator;


# instance fields
.field q:Landroid/arch/a/b/e;

.field w:Landroid/arch/a/b/e;


# direct methods
.method constructor <init>(Landroid/arch/a/b/e;Landroid/arch/a/b/e;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    .line 225
    iput-object p1, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    .line 226
    return-void
.end method

.method private d()Landroid/arch/a/b/e;
    .locals 2

    .line 250
    iget-object v0, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    iget-object v1, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object v0, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    invoke-virtual {p0, v0}, Landroid/arch/a/b/g;->a(Landroid/arch/a/b/e;)Landroid/arch/a/b/e;

    move-result-object v0

    return-object v0

    .line 251
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method abstract a(Landroid/arch/a/b/e;)Landroid/arch/a/b/e;
.end method

.method abstract b(Landroid/arch/a/b/e;)Landroid/arch/a/b/e;
.end method

.method public final c(Landroid/arch/a/b/e;)V
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    if-ne p1, v0, :cond_0

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    .line 237
    iput-object v0, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    .line 240
    :cond_0
    iget-object v0, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    if-ne v0, p1, :cond_1

    .line 241
    iget-object v0, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    invoke-virtual {p0, v0}, Landroid/arch/a/b/g;->b(Landroid/arch/a/b/e;)Landroid/arch/a/b/e;

    move-result-object v0

    iput-object v0, p0, Landroid/arch/a/b/g;->w:Landroid/arch/a/b/e;

    .line 244
    :cond_1
    iget-object v0, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    if-ne v0, p1, :cond_2

    .line 245
    invoke-direct {p0}, Landroid/arch/a/b/g;->d()Landroid/arch/a/b/e;

    move-result-object p1

    iput-object p1, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    .line 247
    :cond_2
    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 230
    iget-object v0, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 2

    .line 218
    iget-object v0, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    invoke-direct {p0}, Landroid/arch/a/b/g;->d()Landroid/arch/a/b/e;

    move-result-object v1

    iput-object v1, p0, Landroid/arch/a/b/g;->q:Landroid/arch/a/b/e;

    return-object v0
.end method
