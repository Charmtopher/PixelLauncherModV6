.class public final Lcom/google/protobuf/nano/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final ISO_8859_1:Ljava/nio/charset/Charset;

.field protected static final UTF_8:Ljava/nio/charset/Charset;

.field public static final afc:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/f;->UTF_8:Ljava/nio/charset/Charset;

    .line 71
    const-string v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/f;->ISO_8859_1:Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/f;->afc:Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/google/protobuf/nano/b;Lcom/google/protobuf/nano/b;)V
    .locals 1

    .line 543
    iget-object v0, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    if-eqz v0, :cond_0

    .line 544
    iget-object p0, p0, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    invoke-virtual {p0}, Lcom/google/protobuf/nano/d;->iw()Lcom/google/protobuf/nano/d;

    move-result-object p0

    iput-object p0, p1, Lcom/google/protobuf/nano/b;->aeU:Lcom/google/protobuf/nano/d;

    .line 546
    :cond_0
    return-void
.end method
