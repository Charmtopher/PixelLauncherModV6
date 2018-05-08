.class Landroid/support/v4/app/ai;
.super Landroid/support/v4/app/ag;
.source "SourceFile"


# static fields
.field static DEBUG:Z


# instance fields
.field private final gt:Landroid/arch/lifecycle/k;

.field private final gu:Landroid/support/v4/app/al;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Landroid/support/v4/app/ai;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/arch/lifecycle/k;Landroid/arch/lifecycle/E;)V
    .locals 0

    .line 370
    invoke-direct {p0}, Landroid/support/v4/app/ag;-><init>()V

    .line 371
    iput-object p1, p0, Landroid/support/v4/app/ai;->gt:Landroid/arch/lifecycle/k;

    .line 372
    invoke-static {p2}, Landroid/support/v4/app/al;->a(Landroid/arch/lifecycle/E;)Landroid/support/v4/app/al;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/app/ai;->gu:Landroid/support/v4/app/al;

    .line 373
    return-void
.end method


# virtual methods
.method public final at()V
    .locals 4

    .line 480
    iget-object v0, p0, Landroid/support/v4/app/ai;->gu:Landroid/support/v4/app/al;

    iget-object v1, v0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v1}, Landroid/support/v4/c/v;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, v0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v3, v2}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/aj;

    invoke-virtual {v3}, Landroid/support/v4/app/aj;->at()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    :cond_0
    return-void
.end method

.method public final dump$ec96877(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8

    .line 496
    iget-object v0, p0, Landroid/support/v4/app/ai;->gu:Landroid/support/v4/app/al;

    iget-object v1, v0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v1}, Landroid/support/v4/c/v;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Loaders:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v4}, Landroid/support/v4/c/v;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    iget-object v4, v0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v4, v3}, Landroid/support/v4/c/v;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/aj;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v0, Landroid/support/v4/app/al;->gC:Landroid/support/v4/c/v;

    invoke-virtual {v5, v3}, Landroid/support/v4/c/v;->keyAt(I)I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/support/v4/app/aj;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mId="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v4, Landroid/support/v4/app/aj;->fp:I

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, " mArgs="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/aj;->gv:Landroid/os/Bundle;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mLoader="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v5, v4, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mId="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v5, Landroid/support/v4/a/b;->fp:I

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(I)V

    const-string v7, " mListener="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v5, Landroid/support/v4/a/b;->hO:Landroid/support/v4/a/c;

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-boolean v7, v5, Landroid/support/v4/a/b;->mStarted:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroid/support/v4/a/b;->hR:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroid/support/v4/a/b;->hS:Z

    if-eqz v7, :cond_1

    :cond_0
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "mStarted="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroid/support/v4/a/b;->mStarted:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mContentChanged="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroid/support/v4/a/b;->hR:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Z)V

    const-string v7, " mProcessingChange="

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v7, v5, Landroid/support/v4/a/b;->hS:Z

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    iget-boolean v7, v5, Landroid/support/v4/a/b;->hP:Z

    if-nez v7, :cond_2

    iget-boolean v7, v5, Landroid/support/v4/a/b;->hQ:Z

    if-eqz v7, :cond_3

    :cond_2
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mAbandoned="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, v5, Landroid/support/v4/a/b;->hP:Z

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " mReset="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v5, Landroid/support/v4/a/b;->hQ:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    iget-object v5, v4, Landroid/support/v4/app/aj;->gx:Landroid/support/v4/app/ak;

    if-eqz v5, :cond_4

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mCallbacks="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/aj;->gx:Landroid/support/v4/app/ak;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v5, v4, Landroid/support/v4/app/aj;->gx:Landroid/support/v4/app/ak;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "mDeliveredData="

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v5, v5, Landroid/support/v4/app/ak;->gA:Z

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mData="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Landroid/support/v4/app/aj;->gw:Landroid/support/v4/a/b;

    iget-object v6, v4, Landroid/arch/lifecycle/q;->al:Ljava/lang/Object;

    sget-object v7, Landroid/arch/lifecycle/q;->ai:Ljava/lang/Object;

    if-eq v6, v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v4/a/b;->dataToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "mStarted="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v4, Landroid/arch/lifecycle/q;->ak:I

    if-lez v4, :cond_6

    const/4 v4, 0x1

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 497
    :cond_7
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 486
    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-object v1, p0, Landroid/support/v4/app/ai;->gt:Landroid/arch/lifecycle/k;

    invoke-static {v1, v0}, Landroid/support/v4/c/f;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 490
    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
