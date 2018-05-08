.class public Lcom/google/android/apps/nexuslauncher/reflection/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/signal/ReflectionEvent;


# instance fields
.field public Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    .line 37
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/e/j;-><init>()V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 38
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/reflection/e/m;-><init>()V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/e/h;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    .line 25
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->l(Ljava/util/List;)Lcom/google/research/reflection/signal/ReflectionEvent;

    .line 27
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    if-nez p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/j;-><init>()V

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/m;-><init>()V

    iput-object v0, p1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    .line 33
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;)Lcom/google/research/reflection/signal/ReflectionEvent;
    .locals 1

    .line 59
    if-eqz p1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-virtual {p1}, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    .line 62
    :cond_0
    return-object p0
.end method

.method public final a(Lcom/google/research/reflection/signal/b;)Lcom/google/research/reflection/signal/ReflectionEvent;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/e;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/e;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    .line 105
    return-object p0
.end method

.method public final a(Lcom/google/research/reflection/signal/d;)Lcom/google/research/reflection/signal/ReflectionEvent;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/h;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/h;->Er:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    .line 94
    return-object p0
.end method

.method public final a([BI)Lcom/google/research/reflection/signal/ReflectionEvent;
    .locals 2

    .line 156
    :try_start_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Lcom/google/protobuf/nano/a;->b([BII)Lcom/google/protobuf/nano/a;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->l(Lcom/google/protobuf/nano/a;)Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 157
    :catch_0
    move-exception p1

    .line 158
    const-string p1, "Reflection"

    const-string p2, "deserialize event failed!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 p1, 0x0

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 165
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    if-nez v0, :cond_0

    .line 166
    const/4 p1, 0x1

    return p1

    .line 168
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    if-nez v1, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    instance-of v1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    if-eqz v1, :cond_2

    .line 172
    check-cast p1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    iget-object p1, p1, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    .line 173
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 175
    :cond_2
    return v0

    .line 169
    :cond_3
    :goto_0
    return v0
.end method

.method public final et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;
    .locals 2

    .line 54
    invoke-static {}, Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;->values()[Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final eu()Lcom/google/research/reflection/signal/d;
    .locals 2

    .line 88
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/h;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Df:Lcom/google/android/apps/nexuslauncher/reflection/e/m;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/h;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/m;)V

    return-object v0
.end method

.method public final ev()Lcom/google/research/reflection/signal/b;
    .locals 2

    .line 99
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/g/e;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Dg:Lcom/google/android/apps/nexuslauncher/reflection/e/j;

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/e;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/e/j;)V

    return-object v0
.end method

.method public final ew()Ljava/util/List;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final ex()[B
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    if-nez v0, :cond_0

    .line 147
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-static {v0}, Lcom/google/protobuf/nano/g;->toByteArray(Lcom/google/protobuf/nano/g;)[B

    move-result-object v0

    return-object v0
.end method

.method public final ey()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    return-object v0
.end method

.method public final ez()Lcom/google/android/apps/nexuslauncher/reflection/g/c;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ex()[B

    move-result-object v0

    .line 192
    if-eqz v0, :cond_0

    .line 193
    array-length v1, v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->a([BI)Lcom/google/research/reflection/signal/ReflectionEvent;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;

    return-object v0

    .line 195
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->duration:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/util/List;)Lcom/google/research/reflection/signal/ReflectionEvent;
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    .line 127
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Ct:[Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-object p0
.end method

.method public final p(Ljava/lang/String;)Lcom/google/research/reflection/signal/ReflectionEvent;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    .line 49
    return-object p0
.end method

.method public final q(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/g/c;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->Di:Ljava/lang/String;

    .line 182
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string v1, "Event [id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->Ep:Lcom/google/android/apps/nexuslauncher/reflection/e/h;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/reflection/e/h;->sc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type: "

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->et()Lcom/google/research/reflection/signal/ReflectionEvent$ReflectionEventType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    const-string v1, "Timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bootTime: "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->dT()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", elapsedTime: "

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->eF()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", timezone: "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->getTimeZone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time offset: "

    .line 212
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->eu()Lcom/google/research/reflection/signal/d;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/d;->eG()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 216
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eC()Lcom/google/research/reflection/signal/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 217
    const-string v1, "Latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eC()Lcom/google/research/reflection/signal/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/a;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", Longitude: "

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eC()Lcom/google/research/reflection/signal/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/a;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eA()Lcom/google/research/reflection/signal/ReflectionPrivatePlace;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 222
    const-string v1, "Private place alias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eA()Lcom/google/research/reflection/signal/ReflectionPrivatePlace;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/ReflectionPrivatePlace;->eD()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", time: "

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eA()Lcom/google/research/reflection/signal/ReflectionPrivatePlace;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/ReflectionPrivatePlace;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eB()Lcom/google/research/reflection/signal/c;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 228
    const-string v1, "Public place alias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eB()Lcom/google/research/reflection/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/c;->eE()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time: "

    .line 230
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ev()Lcom/google/research/reflection/signal/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/b;->eB()Lcom/google/research/reflection/signal/c;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/research/reflection/signal/c;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_3
    const-string v1, "Event source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/g/c;->ew()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
