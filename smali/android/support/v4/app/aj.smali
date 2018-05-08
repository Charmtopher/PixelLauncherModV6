.class public Landroid/support/v4/app/aj;
.super Landroid/arch/lifecycle/u;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/a/c;


# instance fields
.field final fp:I

.field private gt:Landroid/arch/lifecycle/k;

.field final gv:Landroid/os/Bundle;

.field final gw:Landroid/support/v4/a/b;

.field gx:Landroid/support/v4/app/ak;

.field private gy:Landroid/support/v4/a/b;


# virtual methods
.method public final a(Landroid/arch/lifecycle/v;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/arch/lifecycle/u;->a(Landroid/arch/lifecycle/v;)V

    .line 136
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v4/app/aj;->gt:Landroid/arch/lifecycle/k;

    .line 137
    iput-object p1, p0, Landroid/support/v4/app/aj;->gx:Landroid/support/v4/app/ak;

    .line 138
    return-void
.end method

.method final at()V
    .locals 4

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/aj;->gt:Landroid/arch/lifecycle/k;

    .line 112
    iget-object v1, p0, Landroid/support/v4/app/aj;->gx:Landroid/support/v4/app/ak;

    .line 113
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 118
    invoke-super {p0, v1}, Landroid/arch/lifecycle/u;->a(Landroid/arch/lifecycle/v;)V

    .line 119
    invoke-interface {v0}, Landroid/arch/lifecycle/k;->f()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/arch/lifecycle/Lifecycle;->e()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object v2

    sget-object v3, Landroid/arch/lifecycle/Lifecycle$State;->R:Landroid/arch/lifecycle/Lifecycle$State;

    if-eq v2, v3, :cond_2

    new-instance v2, Landroid/arch/lifecycle/r;

    invoke-direct {v2, p0, v0, v1}, Landroid/arch/lifecycle/r;-><init>(Landroid/arch/lifecycle/q;Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/v;)V

    iget-object v3, p0, Landroid/arch/lifecycle/q;->aj:Landroid/arch/a/b/b;

    invoke-virtual {v3, v1, v2}, Landroid/arch/a/b/b;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/lifecycle/s;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/arch/lifecycle/s;->b(Landroid/arch/lifecycle/k;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add the same observer with different lifecycles"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    invoke-interface {v0}, Landroid/arch/lifecycle/k;->f()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/arch/lifecycle/Lifecycle;->a(Landroid/arch/lifecycle/j;)V

    .line 121
    :cond_2
    return-void
.end method

.method final g(Z)Landroid/support/v4/a/b;
    .locals 5

    .line 149
    sget-boolean v0, Landroid/support/v4/app/ai;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Destroying: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/a/b;->hP:Z

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/aj;->gx:Landroid/support/v4/app/ak;

    .line 155
    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p0, v0}, Landroid/support/v4/app/aj;->a(Landroid/arch/lifecycle/v;)V

    .line 157
    if-eqz p1, :cond_1

    .line 158
    iget-boolean v2, v0, Landroid/support/v4/app/ak;->gA:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Landroid/support/v4/app/ai;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  Resetting: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/support/v4/app/ak;->gw:Landroid/support/v4/a/b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    iget-object v2, p0, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    iget-object v3, v2, Landroid/support/v4/a/b;->hO:Landroid/support/v4/a/c;

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/support/v4/a/b;->hO:Landroid/support/v4/a/c;

    if-ne v3, p0, :cond_5

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/a/b;->hO:Landroid/support/v4/a/c;

    .line 163
    if-eqz v0, :cond_2

    iget-boolean v0, v0, Landroid/support/v4/app/ak;->gA:Z

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    .line 164
    :cond_3
    iget-object p1, p0, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    iput-boolean v1, p1, Landroid/support/v4/a/b;->hQ:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/support/v4/a/b;->mStarted:Z

    iput-boolean v0, p1, Landroid/support/v4/a/b;->hP:Z

    iput-boolean v0, p1, Landroid/support/v4/a/b;->hR:Z

    iput-boolean v0, p1, Landroid/support/v4/a/b;->hS:Z

    .line 165
    iget-object p1, p0, Landroid/support/v4/app/aj;->gy:Landroid/support/v4/a/b;

    return-object p1

    .line 167
    :cond_4
    iget-object p1, p0, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    return-object p1

    .line 162
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempting to unregister the wrong listener"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No listener register"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final i()V
    .locals 3

    .line 82
    sget-boolean v0, Landroid/support/v4/app/ai;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Stopping: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/a/b;->mStarted:Z

    .line 84
    return-void
.end method

.method protected final onActive()V
    .locals 3

    .line 76
    sget-boolean v0, Landroid/support/v4/app/ai;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "LoaderManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  Starting: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/a/b;->mStarted:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/a/b;->hQ:Z

    iput-boolean v1, v0, Landroid/support/v4/a/b;->hP:Z

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 200
    const-string v1, "LoaderInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Landroid/support/v4/app/aj;->fp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v1, p0, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 206
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
