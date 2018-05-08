.class public final Lcom/google/android/gms/internal/W;
.super Ljava/lang/Object;


# instance fields
.field protected final PB:Ljava/lang/Class;

.field protected final PC:Z

.field public final tag:I

.field type:I


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    iput v0, p0, Lcom/google/android/gms/internal/W;->type:I

    iput-object p1, p0, Lcom/google/android/gms/internal/W;->PB:Ljava/lang/Class;

    iput p2, p0, Lcom/google/android/gms/internal/W;->tag:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/W;->PC:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/W;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/W;

    iget v1, p0, Lcom/google/android/gms/internal/W;->type:I

    iget v3, p1, Lcom/google/android/gms/internal/W;->type:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/W;->PB:Ljava/lang/Class;

    iget-object v3, p1, Lcom/google/android/gms/internal/W;->PB:Ljava/lang/Class;

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/W;->tag:I

    iget p1, p1, Lcom/google/android/gms/internal/W;->tag:I

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/W;->type:I

    const/16 v1, 0x47b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/W;->PB:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, Lcom/google/android/gms/internal/W;->tag:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    return v1
.end method
