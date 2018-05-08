.class public final Lcom/google/android/gms/clearcut/internal/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/c;


# static fields
.field static HV:Ljava/lang/Boolean;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private HW:Lcom/google/android/gms/clearcut/internal/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/clearcut/internal/g;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/clearcut/internal/g;->HV:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/clearcut/internal/h;

    invoke-direct {v0, p1}, Lcom/google/android/gms/clearcut/internal/h;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/clearcut/internal/g;-><init>(Lcom/google/android/gms/clearcut/internal/h;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/internal/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/o;->v(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/clearcut/internal/h;

    iput-object p1, p0, Lcom/google/android/gms/clearcut/internal/g;->HW:Lcom/google/android/gms/clearcut/internal/h;

    return-void
.end method

.method private static x(Ljava/lang/String;)Lcom/google/android/gms/clearcut/internal/i;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, ""

    const/16 v2, 0x2c

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v3, v2, 0x1

    :cond_1
    move-object v5, v1

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-gtz v1, :cond_3

    const-string v1, "LogSamplerImpl"

    const-string v2, "Failed to parse the rule: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_3
    :try_start_0
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    cmp-long p0, v6, v1

    if-ltz p0, :cond_5

    cmp-long p0, v8, v1

    if-gez p0, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/google/android/gms/clearcut/internal/i;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/clearcut/internal/i;-><init>(Ljava/lang/String;JJ)V

    return-object p0

    :cond_5
    :goto_1
    const-string p0, "LogSamplerImpl"

    const/16 v1, 0x48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "negative values not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "LogSamplerImpl"

    const-string v3, "parseLong() failed while parsing: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;I)Z
    .locals 13

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p2, :cond_1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_2

    return p2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/clearcut/internal/g;->HW:Lcom/google/android/gms/clearcut/internal/h;

    iget-object v2, v1, Lcom/google/android/gms/clearcut/internal/h;->HX:Landroid/content/ContentResolver;

    const-wide/16 v3, 0x0

    if-nez v2, :cond_3

    move-wide v1, v3

    goto :goto_1

    :cond_3
    iget-object v1, v1, Lcom/google/android/gms/clearcut/internal/h;->HX:Landroid/content/ContentResolver;

    const-string v2, "android_id"

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/l;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/clearcut/internal/g;->HW:Lcom/google/android/gms/clearcut/internal/h;

    iget-object v6, v5, Lcom/google/android/gms/clearcut/internal/h;->HX:Landroid/content/ContentResolver;

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    iget-object v5, v5, Lcom/google/android/gms/clearcut/internal/h;->HX:Landroid/content/ContentResolver;

    const-string v6, "gms:playlog:service:sampling_"

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_2
    invoke-static {v5, p1, v0}, Lcom/google/android/gms/internal/l;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/clearcut/internal/g;->x(Ljava/lang/String;)Lcom/google/android/gms/clearcut/internal/i;

    move-result-object p1

    if-nez p1, :cond_6

    return p2

    :cond_6
    iget-object v0, p1, Lcom/google/android/gms/clearcut/internal/i;->HY:Ljava/lang/String;

    const/16 v5, 0x8

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    sget-object v6, Lcom/google/android/gms/clearcut/internal/g;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v6, v0

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    goto :goto_5

    :cond_8
    :goto_4
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/clearcut/internal/f;->c([B)J

    move-result-wide v0

    iget-wide v5, p1, Lcom/google/android/gms/clearcut/internal/i;->HZ:J

    iget-wide v7, p1, Lcom/google/android/gms/clearcut/internal/i;->Ia:J

    cmp-long p1, v5, v3

    if-ltz p1, :cond_b

    cmp-long p1, v7, v3

    if-ltz p1, :cond_b

    if-lez p1, :cond_a

    cmp-long p1, v0, v3

    if-ltz p1, :cond_9

    rem-long/2addr v0, v7

    goto :goto_6

    :cond_9
    const-wide v2, 0x7fffffffffffffffL

    rem-long v9, v2, v7

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    and-long/2addr v0, v2

    rem-long/2addr v0, v7

    add-long/2addr v9, v0

    rem-long v0, v9, v7

    :goto_6
    cmp-long p1, v0, v5

    if-gez p1, :cond_a

    return p2

    :cond_a
    const/4 p1, 0x0

    return p1

    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const/16 p2, 0x48

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "negative values not supported: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
