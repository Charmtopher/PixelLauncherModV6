.class public Lcom/google/android/gms/clearcut/LogEventParcelable;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final HA:Lcom/google/android/gms/clearcut/d;

.field public final HB:Lcom/google/android/gms/clearcut/d;

.field public HH:Z

.field public final HI:Lcom/google/android/gms/internal/ah;

.field public HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

.field public HM:[B

.field public HN:[I

.field public HO:[Ljava/lang/String;

.field public HP:[I

.field public HQ:[[B

.field public HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/clearcut/h;

    invoke-direct {v0}, Lcom/google/android/gms/clearcut/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/clearcut/LogEventParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;Lcom/google/android/gms/internal/ah;Lcom/google/android/gms/clearcut/d;Lcom/google/android/gms/clearcut/d;[I[Ljava/lang/String;[I[[B[Lcom/google/android/gms/phenotype/ExperimentTokens;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HN:[I

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HO:[Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HP:[I

    iput-object p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HQ:[[B

    iput-object p9, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    iput-boolean p10, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HH:Z

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;[B[I[Ljava/lang/String;[I[[BZ[Lcom/google/android/gms/phenotype/ExperimentTokens;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    iput-object p2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B

    iput-object p3, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HN:[I

    iput-object p4, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HO:[Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    iput-object p1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    iput-object p5, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HP:[I

    iput-object p6, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HQ:[[B

    iput-object p8, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    iput-boolean p7, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HH:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/google/android/gms/clearcut/LogEventParcelable;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HN:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HN:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HO:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HO:[Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/m;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HP:[I

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HP:[I

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HQ:[[B

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HQ:[[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    iget-object v3, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HH:Z

    iget-boolean p1, p1, Lcom/google/android/gms/clearcut/LogEventParcelable;->HH:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HN:[I

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HO:[Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HP:[I

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HQ:[[B

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HH:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LogEventParcelable["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEventBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", TestCodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HN:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", MendelPackages: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HO:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", LogEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HI:Lcom/google/android/gms/internal/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExtensionProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HA:Lcom/google/android/gms/clearcut/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", VeProducer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HB:Lcom/google/android/gms/clearcut/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HP:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HQ:[[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ExperimentTokensParcelables: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", AddPhenotypeExperimentTokens: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/16 v0, 0x4f45

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->A(Landroid/os/Parcel;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HL:Lcom/google/android/gms/clearcut/internal/PlayLoggerContext;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {p1, v3, v1, p2, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HM:[B

    const/4 v3, 0x3

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[BZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HN:[I

    const/4 v3, 0x4

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HO:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HP:[I

    const/4 v3, 0x6

    invoke-static {p1, v3, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HQ:[[B

    const/4 v2, 0x7

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[[B)V

    iget-boolean v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HH:Z

    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;IZ)V

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->HR:[Lcom/google/android/gms/phenotype/ExperimentTokens;

    const/16 v2, 0x9

    invoke-static {p1, v2, v1, p2}, Lcom/google/android/gms/common/internal/safeparcel/b;->a(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/b;->B(Landroid/os/Parcel;I)V

    return-void
.end method
