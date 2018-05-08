.class public Lcom/google/android/apps/nexuslauncher/logging/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final mHandler:Landroid/os/Handler;

.field private final zE:Lcom/google/android/gms/clearcut/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/google/android/gms/clearcut/a;

    const-string v1, "GOOGLE_NOW_LAUNCHER"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/clearcut/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->zE:Lcom/google/android/gms/clearcut/a;

    .line 24
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/util/UiThreadHelper;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 14

    .line 33
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 40
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->zE:Lcom/google/android/gms/clearcut/a;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    invoke-static {p1}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/clearcut/b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p1, v3}, Lcom/google/android/gms/clearcut/b;-><init>(Lcom/google/android/gms/clearcut/a;[BB)V

    iget-boolean p1, v2, Lcom/google/android/gms/clearcut/b;->HJ:Z

    if-nez p1, :cond_4

    iput-boolean v1, v2, Lcom/google/android/gms/clearcut/b;->HJ:Z

    new-instance p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HK:Lcom/google/android/gms/clearcut/a;

    invoke-static {v3}, Lcom/google/android/gms/clearcut/a;->i(Lcom/google/android/gms/clearcut/a;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HK:Lcom/google/android/gms/clearcut/a;

    invoke-static {v3}, Lcom/google/android/gms/clearcut/a;->j(Lcom/google/android/gms/clearcut/a;)I

    move-result v5

    iget v6, v2, Lcom/google/android/gms/clearcut/b;->Hr:I

    iget-object v7, v2, Lcom/google/android/gms/clearcut/b;->Hq:Ljava/lang/String;

    iget-object v8, v2, Lcom/google/android/gms/clearcut/b;->Hs:Ljava/lang/String;

    iget-object v9, v2, Lcom/google/android/gms/clearcut/b;->Ht:Ljava/lang/String;

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HK:Lcom/google/android/gms/clearcut/a;

    invoke-static {v3}, Lcom/google/android/gms/clearcut/a;->h(Lcom/google/android/gms/clearcut/a;)Z

    move-result v10

    iget v11, v2, Lcom/google/android/gms/clearcut/b;->Hv:I

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v5, v2, Lcom/google/android/gms/clearcut/b;->HI:Lcom/google/android/gms/internal/ah;

    iget-object v6, v2, Lcom/google/android/gms/clearcut/b;->HA:Lcom/google/android/gms/clearcut/d;

    iget-object v7, v2, Lcom/google/android/gms/clearcut/b;->HB:Lcom/google/android/gms/clearcut/d;

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HC:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/google/android/gms/clearcut/a;->e(Ljava/util/ArrayList;)[I

    move-result-object v8

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HD:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HD:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/clearcut/a;->fe()[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    move-object v9, v3

    goto :goto_0

    :cond_0
    move-object v9, v4

    :goto_0
    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HE:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/google/android/gms/clearcut/a;->e(Ljava/util/ArrayList;)[I

    move-result-object v10

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HG:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HG:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/clearcut/a;->ff()[[B

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    move-object v11, v3

    goto :goto_1

    :cond_1
    move-object v11, v4

    :goto_1
    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HF:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HF:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/clearcut/a;->fg()[Lcom/google/android/gms/phenotype/ExperimentTokens;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/google/android/gms/phenotype/ExperimentTokens;

    move-object v12, v3

    goto :goto_2

    :cond_2
    move-object v12, v4

    :goto_2
    iget-boolean v13, v2, Lcom/google/android/gms/clearcut/b;->HH:Z

    move-object v3, p1

    move-object v4, v0

    invoke-direct/range {v3 .. v13}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/clearcut/d;Lcom/google/android/gms/clearcut/d;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/phenotype/ExperimentTokens;Z)V

    iget-object v0, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    iget-object v3, v2, Lcom/google/android/gms/clearcut/b;->HK:Lcom/google/android/gms/clearcut/a;

    invoke-static {v3}, Lcom/google/android/gms/clearcut/a;->k(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/c;

    move-result-object v3

    iget-object v4, v0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hq:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;->Hr:I

    invoke-interface {v3, v4, v0}, Lcom/google/android/gms/clearcut/c;->b(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v2, Lcom/google/android/gms/clearcut/b;->HK:Lcom/google/android/gms/clearcut/a;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/a;->l(Lcom/google/android/gms/clearcut/a;)Lcom/google/android/gms/clearcut/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/clearcut/f;->a(Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/v;

    goto :goto_3

    :cond_3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->Jc:Lcom/google/android/gms/common/api/Status;

    const-string v0, "Result must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/o;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ck;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/ck;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ck;->b(Lcom/google/android/gms/common/api/y;)V

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "do not reuse LogEventBuilder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_5
    :goto_3
    return v1
.end method
