.class public Lcom/google/android/gms/phenotype/Flag;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final adl:Ljava/util/Comparator;


# instance fields
.field public Vk:Ljava/lang/String;

.field public adf:J

.field public adg:Z

.field public adh:D

.field public adi:[B

.field public final adj:I

.field public final adk:I

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/D;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/D;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/phenotype/C;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/C;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/Flag;->adl:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JZDLjava/lang/String;[BII)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/phenotype/Flag;->adf:J

    iput-boolean p4, p0, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    iput-wide p5, p0, Lcom/google/android/gms/phenotype/Flag;->adh:D

    iput-object p7, p0, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    iput p9, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    iput p10, p0, Lcom/google/android/gms/phenotype/Flag;->adk:I

    return-void
.end method

.method private static compare(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 4

    const-string v0, "Flag("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/16 v2, 0x1b

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Invalid type: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_1

    :cond_0
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->adh:D

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_4
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->adf:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_2
    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adk:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    iget v1, p1, Lcom/google/android/gms/phenotype/Flag;->adj:I

    invoke-static {v0, v1}, Lcom/google/android/gms/phenotype/Flag;->compare(II)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_1
    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid enum value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    iget-object v4, p1, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    if-ne v0, v4, :cond_2

    return v3

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p1, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    if-nez v0, :cond_4

    return v2

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v3, v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    aget-byte v0, v0, v3

    iget-object v1, p1, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    aget-byte v1, v1, v3

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    array-length v0, v0

    iget-object p1, p1, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    array-length p1, p1

    invoke-static {v0, p1}, Lcom/google/android/gms/phenotype/Flag;->compare(II)I

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    if-ne v0, p1, :cond_7

    return v3

    :cond_7
    if-nez v0, :cond_8

    return v1

    :cond_8
    if-nez p1, :cond_9

    return v2

    :cond_9
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/phenotype/Flag;->adh:D

    iget-wide v2, p1, Lcom/google/android/gms/phenotype/Flag;->adh:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    iget-boolean p1, p1, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    if-ne v0, p1, :cond_a

    return v3

    :cond_a
    if-eqz v0, :cond_b

    return v2

    :cond_b
    return v1

    :pswitch_4
    iget-wide v4, p0, Lcom/google/android/gms/phenotype/Flag;->adf:J

    iget-wide v6, p1, Lcom/google/android/gms/phenotype/Flag;->adf:J

    cmp-long p1, v4, v6

    if-gez p1, :cond_c

    return v1

    :cond_c
    if-nez p1, :cond_d

    return v3

    :cond_d
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/phenotype/Flag;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lcom/google/android/gms/phenotype/Flag;

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/android/gms/phenotype/g;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Flag;->adj:I

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adk:I

    iget v2, p1, Lcom/google/android/gms/phenotype/Flag;->adk:I

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/AssertionError;

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid enum value: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    iget-object p1, p1, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/google/android/gms/phenotype/g;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_2
    iget-wide v3, p0, Lcom/google/android/gms/phenotype/Flag;->adh:D

    iget-wide v5, p1, Lcom/google/android/gms/phenotype/Flag;->adh:D

    cmpl-double p1, v3, v5

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    :pswitch_3
    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    iget-boolean p1, p1, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    if-ne v0, p1, :cond_2

    return v2

    :cond_2
    return v1

    :pswitch_4
    iget-wide v3, p0, Lcom/google/android/gms/phenotype/Flag;->adf:J

    iget-wide v5, p1, Lcom/google/android/gms/phenotype/Flag;->adf:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_3

    return v2

    :cond_3
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/phenotype/Flag;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 p2, 0x4f45

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->adf:J

    const/4 v0, 0x3

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IJ)V

    iget-boolean v0, p0, Lcom/google/android/gms/phenotype/Flag;->adg:Z

    const/4 v2, 0x4

    invoke-static {p1, v2, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-wide v2, p0, Lcom/google/android/gms/phenotype/Flag;->adh:D

    const/4 v0, 0x5

    invoke-static {p1, v0, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ID)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->Vk:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/google/android/gms/phenotype/Flag;->adi:[B

    const/4 v2, 0x7

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adj:I

    const/16 v1, 0x8

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    iget v0, p0, Lcom/google/android/gms/phenotype/Flag;->adk:I

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->d(Landroid/os/Parcel;II)V

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
