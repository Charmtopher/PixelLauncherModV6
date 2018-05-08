.class Landroid/support/v4/app/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/v;


# instance fields
.field gA:Z

.field final gw:Landroid/support/v4/a/b;

.field private final gz:Landroid/support/v4/app/ah;


# virtual methods
.method public final c(Ljava/lang/Object;)V
    .locals 3

    .line 245
    sget-boolean v0, Landroid/support/v4/app/ai;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  onLoadFinished in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/ak;->gw:Landroid/support/v4/a/b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v4/app/ak;->gw:Landroid/support/v4/a/b;

    .line 247
    invoke-virtual {v2, p1}, Landroid/support/v4/a/b;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v4/app/ak;->gA:Z

    .line 251
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Landroid/support/v4/app/ak;->gz:Landroid/support/v4/app/ah;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
