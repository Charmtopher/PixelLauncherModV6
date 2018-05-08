.class public final enum Landroid/arch/lifecycle/Lifecycle$Event;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum J:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum K:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum L:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum M:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum N:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum O:Landroid/arch/lifecycle/Lifecycle$Event;

.field public static final enum P:Landroid/arch/lifecycle/Lifecycle$Event;

.field private static final synthetic Q:[Landroid/arch/lifecycle/Lifecycle$Event;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 119
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->J:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 123
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const-string v1, "ON_START"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->K:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 127
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const-string v1, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->L:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 131
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const-string v1, "ON_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->M:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 135
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const-string v1, "ON_STOP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->N:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 139
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const-string v1, "ON_DESTROY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->O:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 143
    new-instance v0, Landroid/arch/lifecycle/Lifecycle$Event;

    const-string v1, "ON_ANY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Landroid/arch/lifecycle/Lifecycle$Event;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->P:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 114
    const/4 v0, 0x7

    new-array v0, v0, [Landroid/arch/lifecycle/Lifecycle$Event;

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->J:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v2

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->K:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v3

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->L:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v4

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->M:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v5

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->N:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v6

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->O:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v7

    sget-object v1, Landroid/arch/lifecycle/Lifecycle$Event;->P:Landroid/arch/lifecycle/Lifecycle$Event;

    aput-object v1, v0, v8

    sput-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->Q:[Landroid/arch/lifecycle/Lifecycle$Event;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 115
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 1

    .line 114
    const-class v0, Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/arch/lifecycle/Lifecycle$Event;

    return-object p0
.end method

.method public static values()[Landroid/arch/lifecycle/Lifecycle$Event;
    .locals 1

    .line 114
    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->Q:[Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0}, [Landroid/arch/lifecycle/Lifecycle$Event;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/arch/lifecycle/Lifecycle$Event;

    return-object v0
.end method
