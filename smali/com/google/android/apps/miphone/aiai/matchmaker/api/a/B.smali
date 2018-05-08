.class public final Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;
.super Lcom/google/protobuf/nano/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2103
    invoke-direct {p0}, Lcom/google/protobuf/nano/b;-><init>()V

    .line 2104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;->aeU:Lcom/google/protobuf/nano/d;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/miphone/aiai/matchmaker/api/a/B;->cachedSize:I

    .line 2105
    return-void
.end method


# virtual methods
.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/a;)Lcom/google/protobuf/nano/g;
    .locals 1

    .line 2084
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/a;->in()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/b;->a(Lcom/google/protobuf/nano/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return-object p0
.end method
