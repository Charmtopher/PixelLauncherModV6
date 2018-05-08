.class public final Lcom/google/research/reflection/b/f;
.super Lcom/google/research/reflection/b/g;
.source "SourceFile"

# interfaces
.implements Lcom/google/research/reflection/b/m;


# instance fields
.field private afB:Ljava/util/List;

.field private afC:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/google/research/reflection/b/g;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/b/f;->afC:I

    .line 25
    iget-object v0, p0, Lcom/google/research/reflection/b/f;->afE:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 26
    return-void
.end method


# virtual methods
.method protected final L(Z)V
    .locals 2

    .line 157
    iget-object p1, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/b/g;

    .line 158
    iget-object v1, p0, Lcom/google/research/reflection/b/f;->afE:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/research/reflection/b/g;->iN()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 159
    goto :goto_0

    .line 160
    :cond_0
    return-void
.end method

.method protected final a(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;
    .locals 11

    .line 73
    new-instance v0, Lcom/google/research/reflection/layers/m;

    iget v1, p0, Lcom/google/research/reflection/b/f;->afC:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/research/reflection/layers/m;-><init>(II)V

    .line 74
    nop

    .line 75
    iget-object v1, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/research/reflection/b/g;

    .line 76
    invoke-virtual {v4, p1, p2}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/a/a;Lcom/google/research/reflection/signal/ReflectionEvent;)Lcom/google/research/reflection/layers/m;

    move-result-object v5

    iget-object v5, v5, Lcom/google/research/reflection/layers/m;->agU:[D

    .line 77
    move v6, v2

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_0

    .line 78
    iget-object v7, v0, Lcom/google/research/reflection/layers/m;->agU:[D

    add-int v8, v6, v3

    aget-wide v9, v5, v6

    aput-wide v9, v7, v8

    .line 77
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v4}, Lcom/google/research/reflection/b/g;->iI()I

    move-result v4

    add-int/2addr v3, v4

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    return-object v0
.end method

.method public final a(Lcom/google/research/reflection/b/g;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iput-object p0, p1, Lcom/google/research/reflection/b/g;->afD:Lcom/google/research/reflection/b/m;

    .line 67
    iget v0, p0, Lcom/google/research/reflection/b/f;->afC:I

    invoke-virtual {p1}, Lcom/google/research/reflection/b/g;->iI()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/research/reflection/b/f;->afC:I

    .line 68
    return-void
.end method

.method public final a(Lcom/google/research/reflection/b/g;I)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/b/g;

    if-eq v2, p1, :cond_0

    invoke-virtual {v2}, Lcom/google/research/reflection/b/g;->iI()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    add-int/2addr p2, v1

    .line 93
    iget-object p1, p0, Lcom/google/research/reflection/b/f;->afD:Lcom/google/research/reflection/b/m;

    if-eqz p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/google/research/reflection/b/f;->afD:Lcom/google/research/reflection/b/m;

    invoke-interface {p1, p0, p2}, Lcom/google/research/reflection/b/m;->a(Lcom/google/research/reflection/b/g;I)V

    .line 96
    :cond_1
    return-void
.end method

.method public final a(Ljava/io/DataInputStream;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/b/f;->afC:I

    .line 103
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 104
    :goto_0
    if-ge v0, v1, :cond_2

    .line 105
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Lcom/google/research/reflection/b/g;->M(Ljava/lang/String;)Lcom/google/research/reflection/b/g;

    move-result-object v3

    .line 107
    if-nez v3, :cond_1

    .line 108
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Cannot find extractor with "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_1
    invoke-virtual {v3, p1}, Lcom/google/research/reflection/b/g;->a(Ljava/io/DataInputStream;)V

    .line 111
    invoke-virtual {p0, v3}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_2
    return-void
.end method

.method public final a(Ljava/io/DataOutputStream;)V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 118
    iget-object v0, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/research/reflection/b/g;

    .line 119
    invoke-static {v1}, Lcom/google/research/reflection/b/g;->b(Lcom/google/research/reflection/b/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v1, p1}, Lcom/google/research/reflection/b/g;->a(Ljava/io/DataOutputStream;)V

    .line 121
    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/research/reflection/b/f;->iM()Lcom/google/research/reflection/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final getFeatureName()Ljava/lang/String;
    .locals 1

    .line 152
    const-string v0, "aggregator"

    return-object v0
.end method

.method public final iI()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/google/research/reflection/b/f;->afC:I

    return v0
.end method

.method public final synthetic iJ()Lcom/google/research/reflection/b/g;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/google/research/reflection/b/f;->iM()Lcom/google/research/reflection/b/f;

    move-result-object v0

    return-object v0
.end method

.method public final iM()Lcom/google/research/reflection/b/f;
    .locals 3

    .line 34
    new-instance v0, Lcom/google/research/reflection/b/f;

    invoke-direct {v0}, Lcom/google/research/reflection/b/f;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/b/g;

    .line 36
    invoke-virtual {v2}, Lcom/google/research/reflection/b/g;->iJ()Lcom/google/research/reflection/b/g;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/research/reflection/b/f;->a(Lcom/google/research/reflection/b/g;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 5

    .line 138
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 139
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/b/g;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 142
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    const/4 v3, 0x1

    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    .line 143
    invoke-virtual {v2, v3}, Lcom/google/research/reflection/b/g;->q(Ljava/util/List;)V

    .line 146
    :cond_0
    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 45
    iget-object v2, p0, Lcom/google/research/reflection/b/f;->afB:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/research/reflection/b/g;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
