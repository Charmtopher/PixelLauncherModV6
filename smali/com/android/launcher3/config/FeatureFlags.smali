.class public final Lcom/android/launcher3/config/FeatureFlags;
.super Lcom/android/launcher3/config/BaseFlags;
.source "SourceFile"


# static fields
.field public static final AUTHORITY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-string v0, "com.google.android.apps.nexuslauncher.settings"

    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/config/FeatureFlags;->AUTHORITY:Ljava/lang/String;

    .line 28
    return-void
.end method
