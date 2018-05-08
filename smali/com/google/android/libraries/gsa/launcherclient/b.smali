.class public Lcom/google/android/libraries/gsa/launcherclient/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

.field private aep:I

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->name:Ljava/lang/String;

    .line 26
    new-array p1, p2, [Lcom/google/android/libraries/gsa/launcherclient/c;

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    .line 27
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    .line 28
    return-void
.end method

.method private static a(Lcom/google/android/libraries/gsa/launcherclient/c;ILjava/lang/String;)Z
    .locals 1

    .line 99
    if-eqz p0, :cond_0

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->type:I

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/c;->CW:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;F)V
    .locals 4

    .line 48
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 49
    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length v2, v2

    rem-int/2addr v1, v2

    .line 50
    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    aget-object v2, v2, v0

    invoke-static {v2, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(Lcom/google/android/libraries/gsa/launcherclient/c;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    aget-object v2, v2, v1

    invoke-static {v2, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(Lcom/google/android/libraries/gsa/launcherclient/c;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    aget-object v0, v2, v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/c;->b(ILjava/lang/String;F)V

    .line 52
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    aget-object p1, p1, v1

    iget p2, p1, Lcom/google/android/libraries/gsa/launcherclient/c;->aer:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/google/android/libraries/gsa/launcherclient/c;->aer:I

    .line 53
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    new-instance v2, Lcom/google/android/libraries/gsa/launcherclient/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/google/android/libraries/gsa/launcherclient/c;-><init>(B)V

    aput-object v2, v0, v1

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    iget v1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/libraries/gsa/launcherclient/c;->b(ILjava/lang/String;F)V

    .line 60
    iget p1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    add-int/lit8 p1, p1, 0x1

    iget-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length p2, p2

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    .line 61
    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 1

    .line 43
    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x4

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 44
    return-void
.end method

.method public final dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    .line 64
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->name:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xf

    add-int/2addr v2, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " event history:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "  HH:mm:ss.SSSZ  "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 66
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 68
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 69
    iget-object v3, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    iget v4, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aep:I

    iget-object v5, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length v5, v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/google/android/libraries/gsa/launcherclient/b;->aeo:[Lcom/google/android/libraries/gsa/launcherclient/c;

    array-length v5, v5

    rem-int/2addr v4, v5

    aget-object v3, v3, v4

    .line 70
    if-eqz v3, :cond_1

    .line 71
    iget-wide v4, v3, Lcom/google/android/libraries/gsa/launcherclient/c;->time:J

    invoke-virtual {v1, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 75
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/google/android/libraries/gsa/launcherclient/c;->CW:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v5, v3, Lcom/google/android/libraries/gsa/launcherclient/c;->type:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 78
    :pswitch_0
    const-string v5, ": false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    goto :goto_1

    .line 81
    :pswitch_1
    const-string v5, ": true"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    goto :goto_1

    .line 87
    :pswitch_2
    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/google/android/libraries/gsa/launcherclient/c;->aeq:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 84
    :pswitch_3
    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/google/android/libraries/gsa/launcherclient/c;->aeq:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    nop

    .line 88
    :goto_1
    iget v5, v3, Lcom/google/android/libraries/gsa/launcherclient/c;->aer:I

    if-lez v5, :cond_0

    .line 92
    const-string v5, " & "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/google/android/libraries/gsa/launcherclient/c;->aer:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " similar events"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_0
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 68
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final f(Ljava/lang/String;I)V
    .locals 1

    .line 35
    int-to-float p2, p2

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/libraries/gsa/launcherclient/b;->a(ILjava/lang/String;F)V

    .line 36
    return-void
.end method
